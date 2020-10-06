#ifndef _Z_BG_ICE_SHELTER_H_
#define _Z_BG_ICE_SHELTER_H_

#include <ultra64.h>
#include <global.h>

struct BgIceShelter;

typedef void (*BgIceShelterActionFunc)(struct BgIceShelter*, GlobalContext*);
typedef void (*BgIceShelterUnkFunc)(struct BgIceShelter*, GlobalContext*, f32, f32);


typedef struct BgIceShelter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIceShelterActionFunc actionFunc;
    /* 0x0168 */ ColliderCylinder colliders[2];
    /* 0x0200 */ s16 UNK_200;
    /* 0x0202 */ s16 UNK_202;
} BgIceShelter; // size = 0x0204

extern const ActorInit Bg_Ice_Shelter_InitVars;

#endif
