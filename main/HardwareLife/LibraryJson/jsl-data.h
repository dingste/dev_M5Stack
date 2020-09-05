/*
        jsl-data.h

        This scource file is part of the jsl-esp32 project.

        Author: Lorenzo Pastrana
        Copyright © 2019 Lorenzo Pastrana

        This program is free software: you can redistribute it and/or modify it
        under the terms of the GNU General Public License as published by the
        Free Software Foundation, either version 3 of the License, or (at your
        option) any later version.

        This program is distributed in the hope that it will be useful, but
        WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
        or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
        for more details.

        You should have received a copy of the GNU General Public License along
        with this program. If not, see http://www.gnu.org/licenses/.

 */




#ifndef JSL_DATA_H
#define JSL_DATA_H

#include <stdio.h>
#include <string.h>
#include <vector>
#include <map>

class jsl_data_dict;
class jsl_data_vect;

class jsl_data {
public:

    typedef enum {
        TYPE_NULL,
        TYPE_INT,
        TYPE_REAL,
        TYPE_BOOL,
        TYPE_STR,
        TYPE_DICT,
        TYPE_VECT
    } node_type_t;

    jsl_data() :
    m_type(TYPE_NULL),
    m_parent(nullptr) {
    }

    inline operator node_type_t() const {
        return m_type;
    }

    inline node_type_t type() const {
        return m_type;
    }

    inline jsl_data* parent() const {
        return m_parent;
    }

    void setParent(jsl_data& _parent) {
        if (m_parent != nullptr && m_parent != &_parent) {
            m_parent->removeChild(*this);
        }
        m_parent = &_parent;
    }

    virtual void encode(std::ostream& _out, bool _pretty = false, std::string _tabs = "") const {
        _out << "null";
    }

    virtual ~jsl_data();

    virtual std::string to_string() const {
        return "null";
    };

    static std::string to_string(bool _val);
    static std::string to_string(int32_t _val);
    static std::string to_string(double _val);
    static std::string to_string(const std::string& _val);
    static std::string to_string(const char* _val);

    inline virtual void clear() {
        m_parent = nullptr;
    }

    inline virtual void fire() {
    }

    static std::string escape(const std::string& _str);

protected:

    friend class jsl_data_pool;

    jsl_data(node_type_t _type) :
    m_type(_type),
    m_parent(nullptr) {
    }

    jsl_data(node_type_t _type, jsl_data& _parent) :
    m_type(_type),
    m_parent(&_parent) {
    }

    virtual void removeChild(const jsl_data& _child) {
    } // does nothing

    node_type_t m_type;
    jsl_data* m_parent;

    typedef jsl_data* cont_type;

};

class jsl_data_scal : public jsl_data {
public:

    jsl_data_scal() :
    jsl_data(TYPE_NULL),
    m_scal(0) {
    }

    jsl_data_scal(const jsl_data_scal& _scal) :
    jsl_data(_scal.m_type) {
        switch (m_type) {
            case TYPE_INT:
                m_scal.i = _scal.m_scal.i;
                break;
            case TYPE_REAL:
                m_scal.d = _scal.m_scal.d;
                break;
            case TYPE_BOOL:
                m_scal.b = _scal.m_scal.b;
                break;
            case TYPE_STR:
                new (&m_scal.s) std::string(_scal.m_scal.s);
                break;
            default:
                break;
        }
    }

    jsl_data_scal(int32_t _i) :
    jsl_data(TYPE_INT),
    m_scal(_i) {
    }

    jsl_data_scal(double _d) :
    jsl_data(TYPE_REAL),
    m_scal(_d) {
    }

    jsl_data_scal(bool _b) :
    jsl_data(TYPE_BOOL),
    m_scal(_b) {
    }

    jsl_data_scal(const std::string& _s) :
    jsl_data(TYPE_STR),
    m_scal(_s) {
    }

    jsl_data_scal(const char* _s) :
    jsl_data(TYPE_STR),
    m_scal(_s) {
    }

    jsl_data_scal(int32_t _i, jsl_data& _parent) :
    jsl_data(TYPE_INT, _parent),
    m_scal(_i) {
    }

    jsl_data_scal(double _d, jsl_data& _parent) :
    jsl_data(TYPE_REAL, _parent),
    m_scal(_d) {
    }

    jsl_data_scal(bool _b, jsl_data& _parent) :
    jsl_data(TYPE_BOOL, _parent),
    m_scal(_b) {
    }

    jsl_data_scal(const std::string& _s, jsl_data& _parent) :
    jsl_data(TYPE_STR, _parent),
    m_scal(_s) {
    }

    jsl_data_scal(const char* _s, jsl_data& _parent) :
    jsl_data(TYPE_STR, _parent),
    m_scal(_s) {
    }

    virtual ~jsl_data_scal();

    inline virtual void clear();
    inline virtual void fire();

    jsl_data_scal& operator=(int32_t _i) {
        clearStr();
        m_type = TYPE_INT;
        m_scal = _i;
        return *this;
    }

    jsl_data_scal& operator=(double _d) {
        clearStr();
        m_type = TYPE_REAL;
        m_scal = _d;
        return *this;
    }

    jsl_data_scal& operator=(bool _b) {
        clearStr();
        m_type = TYPE_BOOL;
        m_scal = _b;
        return *this;
    }

    jsl_data_scal& operator=(const std::string& _s) {
        clearStr();
        m_type = TYPE_STR;
        m_scal = _s;
        return *this;
    }

    jsl_data_scal& operator=(const char* _s) {
        clearStr();
        m_type = TYPE_STR;
        m_scal = _s;
        return *this;
    }

    bool operator==(int32_t _i) const {
        return m_type == TYPE_INT && m_scal.i == _i;
    }

    bool operator==(double _d) const {
        return m_type == TYPE_REAL && m_scal.d == _d;
    }

    bool operator==(bool _b) const {
        return m_type == TYPE_BOOL && m_scal.b == _b;
    }

    bool operator==(const std::string& _s) const {
        return m_type == TYPE_STR && m_scal.s == _s;
    }

    bool operator==(const char* _s) const {
        return m_type == TYPE_STR && m_scal.s == std::string(_s);
    }

    operator int32_t() const {
        if (m_type == TYPE_INT) return m_scal.i;
        if (m_type == TYPE_REAL) return (int32_t) (m_scal.d + 0.5);
        return empty_int;
    }

    operator double() const {
        if (m_type == TYPE_REAL) return m_scal.d;
        if (m_type == TYPE_INT) return m_scal.i;
        return empty_double;
    }

    operator bool() const {
        if (m_type == TYPE_BOOL) return m_scal.b;
        return empty_bool;
    }

    operator std::string() const {
        if (m_type == TYPE_STR) return m_scal.s;
        return empty_str;
    }

    operator const char* () const {
        if (m_type == TYPE_STR) return m_scal.s.c_str();
        return empty_str.c_str();
    }

    jsl_data_scal& from_string(const std::string& _str) {
        return from_string(_str.c_str());
    }
    jsl_data_scal& from_string(const char* _str);

    virtual std::string to_string() const;

    virtual void encode(std::ostream& _out, bool _pretty = false, std::string _tabs = "") const {
        _out << to_string();
        if (_pretty && _tabs.size() == 0) _out << "\n";
    }

protected:

    union scalar {
        int32_t i;
        double d;
        bool b;
        std::string s;

        scalar() {
        }

        scalar(int32_t _i) : i(_i) {
        }

        scalar(double _d) : d(_d) {
        }

        scalar(bool _b) : b(_b) {
        }

        scalar(const std::string& _s) {
            new (&s) std::string(_s);
        }

        scalar(const char* _s) {
            new (&s) std::string(_s);
        }

        scalar& operator=(int32_t _i) {
            i = _i;
            return *this;
        }

        scalar& operator=(double _d) {
            d = _d;
            return *this;
        }

        scalar& operator=(bool _b) {
            b = _b;
            return *this;
        }

        scalar& operator=(const char* _s) {
            new (&s) std::string(_s);
            return *this;
        }

        scalar& operator=(const std::string& _s) {
            new (&s) std::string(_s);
            return *this;
        }

        ~scalar() {
        }
    } m_scal;

    void clearStr() {
        if (m_type == TYPE_STR) {
            m_scal.s.std::string::~string();
        }
    }

    const static int32_t empty_int;
    const static double empty_double;
    const static bool empty_bool;
    const static std::string empty_str;
};

class jsl_data_dict : public jsl_data {
public:

    jsl_data_dict() {
        m_type = TYPE_DICT;
    }

    typedef std::map<std::string, cont_type> dict_t;
    typedef dict_t::iterator dict_i;

    const cont_type& operator[](const dict_t::key_type& _key) {
        return m_container[_key];
    }

    const cont_type& operator[](const char* _key) {
        return m_container[_key];
    }

    dict_i find(const dict_t::key_type& _key) {
        return find(_key.c_str());
    }

    inline dict_i find(const char* _key) {
        return m_container.find(_key);
    }

    inline int32_t size() {
        return m_container.size();
    }

    inline dict_i begin() {
        return m_container.begin();
    }

    inline dict_i end() {
        return m_container.end();
    }

    void set_prop(const dict_t::key_type& _key, jsl_data& _item) {
        set_prop(_key.c_str(), _item);
    }

    void set_prop(const char* _key, jsl_data& _item) {
        m_container[_key] = &_item;
        _item.setParent(*this);
    }

    bool get(const char* _name, int32_t& _val) const {
        auto f = m_container.find(_name);
        if (
                f != m_container.end() && (
                f->second->type() == TYPE_REAL ||
                f->second->type() == TYPE_INT
                )) {
            _val = (int32_t)*((jsl_data_scal*) f->second);
            return true;
        }
        return false;
    }

    bool get(const char* _name, double& _val) const {
        auto f = m_container.find(_name);
        if (
                f != m_container.end() && (
                f->second->type() == TYPE_INT ||
                f->second->type() == TYPE_REAL
                )) {
            _val = (double) *((jsl_data_scal*) f->second);
            return true;
        }
        return false;
    }

    bool get(const char* _name, bool& _val) const {
        auto f = m_container.find(_name);
        if (
                f != m_container.end() &&
                f->second->type() == TYPE_BOOL
                ) {
            _val = (bool)*((jsl_data_scal*) f->second);
            return true;
        }
        return false;
    }

    bool get(const char* _name, std::string& _val) const {
        auto f = m_container.find(_name);
        if (
                f != m_container.end() &&
                f->second->type() == TYPE_STR
                ) {
            _val = (const std::string&)*((jsl_data_scal*) f->second);
            return true;
        }
        return false;
    }

    bool get(const char* _name, const char* &_val) const {
        auto f = m_container.find(_name);
        if (
                f != m_container.end() &&
                f->second->type() == TYPE_STR
                ) {
            std::string stringbuffer;
            get(_name, stringbuffer);
            //copy, copy, copy, ... deep copy
            char *buffer = new char[stringbuffer.size() + 1]; //we need extra char for NUL
            memcpy(buffer, stringbuffer.c_str(), stringbuffer.size() + 1);
            _val = buffer;

            return true;
        }
        return false;
    }

    bool get(const char* _name, jsl_data_dict*& _val) const {
        _val = nullptr;
        auto f = m_container.find(_name);
        if (
                f != m_container.end() &&
                f->second->type() == TYPE_DICT
                ) {
            _val = (jsl_data_dict*) f->second;
            return true;
        }
        return false;
    }

    bool get(const char* _name, jsl_data_vect*& _val) const {
        _val = nullptr;
        auto f = m_container.find(_name);
        if (
                f != m_container.end() &&
                f->second->type() == TYPE_VECT
                ) {
            _val = (jsl_data_vect*) f->second;
            return true;
        }
        return false;
    }

    virtual ~jsl_data_dict();

    virtual void encode(std::ostream& _out, bool _pretty = false, std::string _tabs = "") const;

    virtual void clear();
    virtual void fire();

protected:

    dict_t m_container;

    virtual void removeChild(const jsl_data& _child);
};

class jsl_data_vect : public jsl_data {
public:

    jsl_data_vect() {
        m_type = TYPE_VECT;
    }

    typedef std::vector<cont_type> vect_t;
    typedef vect_t::iterator vect_i;

    const cont_type& operator[](int _key) {
        return m_container[_key];
    }

    inline int32_t size() {
        return m_container.size();
    }

    inline vect_i begin() {
        return m_container.begin();
    }

    inline vect_i end() {
        return m_container.end();
    }

    void push_back(jsl_data& _item) {
        m_container.push_back(&_item);
        _item.setParent(*this);
    }

    bool get(int32_t _i, int32_t& _val) const {
        if (
                _i >= 0 && _i < m_container.size() && (
                m_container[_i]->type() == TYPE_REAL ||
                m_container[_i]->type() == TYPE_INT
                )) {
            _val = (int32_t)*((jsl_data_scal*) m_container[_i]);
            return true;
        }
        return false;
    }

    bool get(int32_t _i, double& _val) const {
        if (
                _i >= 0 && _i < m_container.size() && (
                m_container[_i]->type() == TYPE_INT ||
                m_container[_i]->type() == TYPE_REAL
                )) {
            _val = (double) *((jsl_data_scal*) m_container[_i]);
            return true;
        }
        return false;
    }

    bool get(int32_t _i, bool& _val) const {
        if (
                _i >= 0 && _i < m_container.size() &&
                m_container[_i]->type() == TYPE_BOOL
                ) {
            _val = (bool)*((jsl_data_scal*) m_container[_i]);
            return true;
        }
        return false;
    }

    bool get(int32_t _i, std::string& _val) const {
        if (
                _i >= 0 && _i < m_container.size() &&
                m_container[_i]->type() == TYPE_STR
                ) {
            _val = (const std::string&)*((jsl_data_scal*) m_container[_i]);
            return true;
        }
        return false;
    }

    bool get(int32_t _i, jsl_data_dict*& _val) const {
        _val = nullptr;
        if (
                _i >= 0 && _i < m_container.size() &&
                m_container[_i]->type() == TYPE_DICT
                ) {
            _val = (jsl_data_dict*) m_container[_i];
            return true;
        }
        return false;
    }

    bool get(int32_t _i, jsl_data_vect*& _val) const {
        _val = nullptr;
        if (
                _i >= 0 && _i < m_container.size() &&
                m_container[_i]->type() == TYPE_VECT
                ) {
            _val = (jsl_data_vect*) m_container[_i];
            return true;
        }
        return false;
    }

    virtual ~jsl_data_vect();

    virtual void encode(std::ostream& _out, bool _pretty = false, std::string _tabs = "") const;

    virtual void clear();
    virtual void fire();

protected:

    vect_t m_container;

    virtual void removeChild(const jsl_data& _child);
};

class jsl_data_pool {
public:

    enum {
        STORE_STEP = 2
    };

    static void init(uint16_t _s, uint16_t _d, uint16_t _v);

    static jsl_data_scal* hire(int32_t _i);
    static jsl_data_scal* hire(double _d);
    static jsl_data_scal* hire(bool _b);
    static jsl_data_scal* hire(const std::string& _s);
    static jsl_data_scal* hire(const char* _s);

    static jsl_data_scal* hire_scal();
    static jsl_data_dict* hire_dict();
    static jsl_data_vect* hire_vect();

    static void fire(jsl_data_scal& _data);
    static void fire(jsl_data_dict& _data);
    static void fire(jsl_data_vect& _data);

protected:

    static std::vector<jsl_data_scal> m_scals;
    static std::vector<jsl_data_scal*> m_scals_for_hire;

    static std::vector<jsl_data_dict> m_dicts;
    static std::vector<jsl_data_dict*> m_dicts_for_hire;

    static std::vector<jsl_data_vect> m_vects;
    static std::vector<jsl_data_vect*> m_vects_for_hire;
};


#endif // #ifndef JSL_DATA_H
