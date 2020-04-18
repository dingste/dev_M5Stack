#ifndef ITRANSPORTACCESS_H
#define ITRANSPORTACCESS_H
#include <stdint.h>

class ITransportAccess
{
public:
    virtual ~ITransportAccess()
    {

    };

    virtual bool write(const uint8_t* toWrite, int length) =0;
    virtual uint32_t read(uint8_t* buf, const uint16_t length)=0;
};


#endif /* IUARTIO_H */

