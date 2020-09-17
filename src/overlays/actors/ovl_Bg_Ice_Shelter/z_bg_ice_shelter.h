#ifndef _Z_BG_ICE_SHELTER_H_
#define _Z_BG_ICE_SHELTER_H_

#include <ultra64.h>
#include <global.h>

struct BgIceShelter;

typedef void (*BgIceShelterActionFunc)(struct BgIceShelter*, GlobalContext*);

typedef struct BgIceShelter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIceShelterActionFunc actionFunc;
    /* 0x0168 */ ColliderCylinder colliders[3];
    ///* 0x0168 */ char unk_168[156];
} BgIceShelter; // size = 0x0204

extern const ActorInit Bg_Ice_Shelter_InitVars;

#endif
