#include "z_bg_ice_shelter.h"

#define FLAGS 0x00000000

#define THIS ((BgIceShelter*)thisx)

void BgIceShelter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80890740(BgIceShelter* this, GlobalContext* globalCtx);
void func_80891064(BgIceShelter* this);
void func_8089107C(BgIceShelter* this, GlobalContext* globalCtx);
void func_80890B8C(BgIceShelter* this, GlobalContext* globalCtx);
void func_80890E00(BgIceShelter* this, GlobalContext* globalCtx);

const ActorInit Bg_Ice_Shelter_InitVars = {
    ACTOR_BG_ICE_SHELTER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceShelter),
    (ActorFunc)BgIceShelter_Init,
    (ActorFunc)BgIceShelter_Destroy,
    (ActorFunc)BgIceShelter_Update,
    (ActorFunc)BgIceShelter_Draw,
};

// static InitChainEntry sInitChain[] = {
//     ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
//     ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
//     ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
// };

s32 D_808916F0[] = { 0x3DCCCCCD, 0x3D75C28F, 0x3DCCCCCD, 0x3DCCCCCD, 0x3E800000 };

Color_RGBA8_n D_80891704 = { 0xFA, 0xFA, 0xFA, 0xFF };
Color_RGBA8_n D_80891708 = { 0xB4, 0xB4, 0xB4, 0xFF };

ColliderCylinderInit D_8089170C = {
    { COLTYPE_UNK10, 0x00, 0x21, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 0, 0, 0, { 0, 0, 0 } },
};

ColliderCylinderInit D_80891738 = {
    { COLTYPE_UNK12, 0x00, 0x0D, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 0, 0, 0, { 0, 0, 0 } },
};

s16 D_80891764[] = { 0x002F, 0x0021, 0x002C, 0x0029, 0x0064, 0x0000 };
s16 D_80891770[] = { 0x0050, 0x0036, 0x005A, 0x003C, 0x00C8 };
s32 D_8089177C[] = { 0xB0F404B0, 0xB0F801F4, 0x30FC03E8 };
s32 D_80891788[] = { 0x3E3851EC, 0x3E8A3D71, 0x3E75C28F };
s32 D_80891794[] = { 0x00004000, 0x20006000, 0x10005000, 0x30007000 };
s32 D_808917A4[] = { 0x0000003C, 0x00180054, 0x0030000C, 0x00480024 };
s32 D_808917B4[] = { 0xBF800000, 0x3F800000 };
s32 D_808917BC[] = { 0xBAC49BA6, 0xBA6BEDFA, 0xBAD1B717, 0xBAD1B717, 0xBB75C28F };
s32 D_808917D0[] = { 0x3F800000, 0x3F19999A, 0x3F99999A, 0x3F800000, 0x3FE66666 };

void* D_808917E4[] = {
    func_80890B8C,
    func_80890B8C,
    func_80890B8C,
    func_80890E00,
    func_80890B8C,
};

extern UNK_TYPE D_06001C1C;
extern UNK_TYPE D_06002920;

// void func_80890740(BgIceShelter* this, GlobalContext* globalCtx) {
//     s32 pad1;
//     s16* temp_v1;
//     s32 sp30;

//     sp30 = (this->dyna.actor.params >> 8) & 7;
//     Collider_InitCylinder(globalCtx, &this->colliders[0]);
//     Collider_SetCylinder(globalCtx, &this->colliders[0], &this->dyna.actor, &sIceShelterColliderInit);
//     Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[0]);

//     this->colliders[0].dim.radius = D_80891764[sp30];
//     this->colliders[0].dim.height = D_80891770[sp30];

//     if (sp30 == 0 || D_80891770 == D_80891772 || D_80891770 == D_80891778) {
//         Collider_InitCylinder(globalCtx, &this->colliders[1]);
//         Collider_SetCylinder(globalCtx, &this->colliders[1], &this->dyna.actor, &sIceShelter2ColliderInit);
//         Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[1]);

//         this->colliders[1].dim.radius = D_80891764[sp30];
//         this->colliders[1].dim.height = D_80891770[sp30];
//     }

//     if (temp_v1 == D_80891778) {
//         this->colliders[0].dim.pos.z += 0x1E;
//         this->colliders[1].dim.pos.z += 0x1E;
//     }
// }

// s32 func_80890740(void *arg0, s32 arg1) {
//     s32 sp30;
//     void *sp2C;
//     void *sp28;
//     void *sp24;
//     s32 temp_ret;
//     s32 temp_v0;
//     void *temp_a1;
//     void *temp_a1_2;
//     void *temp_a2;
//     void *temp_v1;
//     s32 phi_return;

//     temp_a1 = arg0 + 0x168;
//     sp30 = ((s32) arg0->unk1C >> 8) & 7;
//     sp2C = temp_a1;
//     Collider_InitCylinder(arg1, temp_a1);
//     Collider_SetCylinder(arg1, temp_a1, arg0, &D_8089170C);
//     Collider_CylinderUpdate(arg0, temp_a1);
//     temp_v0 = sp30 * 2;
//     temp_a2 = temp_v0 + &D_80891764;
//     temp_v1 = temp_v0 + &D_80891770;
//     arg0->unk1A8 = (s16) *temp_a2;
//     arg0->unk1AA = (s16) *temp_v1;
//     if (((sp30 == 0) || (temp_v1 == &D_80891772)) || (phi_return = temp_v0, (temp_v1 == &D_80891778))) {
//         temp_a1_2 = arg0 + 0x1B4;
//         sp24 = temp_a1_2;
//         sp28 = temp_v1;
//         sp2C = temp_a2;
//         Collider_InitCylinder(arg1, temp_a1_2, temp_a2);
//         Collider_SetCylinder(arg1, temp_a1_2, arg0, &D_80891738);
//         temp_ret = Collider_CylinderUpdate(arg0, temp_a1_2);
//         arg0->unk1F4 = (s16) *sp2C;
//         arg0->unk1F6 = (s16) *temp_v1;
//         phi_return = temp_ret;
//     } else {

//     }
//     if ((temp_v0 + &D_80891770) == &D_80891778) {
//         arg0->unk1B2 = (s16) (arg0->unk1B2 + 0x1E);
//         arg0->unk1FE = (s16) (arg0->unk1FE + 0x1E);
//     }
//     return phi_return;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890740.s")
// void func_80890740(BgIceShelter* this, GlobalContext* globalCtx) {
//     void* temp_v1;
//     s32 sp30;

//     sp30 = (this->dyna.actor.params >> 8) & 7;
//     Collider_InitCylinder(globalCtx, &this->colliders[0]);
//     Collider_SetCylinder(globalCtx, &this->colliders[0], &this->dyna.actor, &sIceShelterColliderInit);
//     Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[0]);

//     this->colliders[0].dim.radius = D_80891764[sp30];
//     this->colliders[0].dim.height = D_80891770[sp30];

//     if (sp30 == 0 || D_80891770[sp30] == D_80891772[sp30] || D_80891770[sp30] == D_80891778[0]) {
//         Collider_InitCylinder(globalCtx, &this->colliders[1]);
//         Collider_SetCylinder(globalCtx, &this->colliders[1], &this->dyna.actor, &sIceShelter2ColliderInit);
//         Collider_CylinderUpdate(&this->dyna.actor, &this->colliders[1]);
//         this->colliders[1].dim.radius = D_80891764[sp30];
//         this->colliders[1].dim.radius = D_80891770[sp30];
//     }

//     // if (D_80891770[sp30] == &D_80891778) {
//     //     this->colliders[0].dim.pos.z += 0x1E;
//     //     this->colliders[1].dim.pos.z += 0x1E;
//     // }
// }

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890874.s")
void func_80890874(BgIceShelter* this, GlobalContext* globalCtx, u32 collision, DynaPolyMoveFlag flag) {
    s16 pad1;
    u32 local_c = 0;
    s16 pad2;

    DynaPolyInfo_SetActorMove(&this->dyna.actor, flag);
    DynaPolyInfo_Alloc(collision, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, local_c);
    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_ice_shelter.c", 0x16A,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808908FC.s")
// BgIceShelter *func_808908FC(BgIceShelter* this, GlobalContext* globalCtx, s16 arg2) {
//     f32 sp1C;
//     f32 temp_f0;
//     sp1C = Math_Sins(arg2);
//     temp_f0 = Math_Coss(arg2);
//     this->dyna.actor.initPosRot.pos = (f32) ((globalCtx->state.destroy * sp1C) + (arg1->unk0 * temp_f0));
//     // this->dyna.actor.flags = globalCtx->state.main;
//     // this->dyna.actor.initPosRot.pos.x = (f32) ((arg1->unk8 * temp_f0) - (arg1->unk0 * sp1C));
//     return this;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Init.s")
// void BgIceShelter_Init(Actor* thisx, GlobalContext* globalCtx) {
//     BgIceShelter* this = (BgIceShelter*)thisx;
//     s16 temp_v0;

//     temp_v0 = (this->dyna.actor.params >> 8) & 7;
//     Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
//     // Actor_ProcessInitChain(&this->dyna.actor, D_8089177C);
//     if (temp_v0 == 4) {
//         this->dyna.actor.posRot.rot.x = this->dyna.actor.posRot.rot.x + 3000;
//         this->dyna.actor.posRot.pos.y = this->dyna.actor.posRot.pos.y - 45.0f;
//         this->dyna.actor.posRot.pos.z = this->dyna.actor.posRot.pos.z - 38.0f;
//         this->dyna.actor.shape.rot.x = this->dyna.actor.posRot.rot.x;
//     }

//     if (temp_v0 == 4) {
//         Math_Vec3f_Copy(&this->dyna.actor.scale, &D_80891788);
//     } else {
//         Actor_SetScale(&this->dyna.actor, sScales[temp_v0]);
//         // Actor_SetScale(&this->dyna.actor, *(((f32 *)D_808916F0) + temp_v0));
//     }

//     switch (temp_v0) {
//         case 2:
//             func_80890874(this, globalCtx, &D_06001C1C, 0);
//             break;

//         case 3:
//             func_80890874(this, globalCtx, &D_06002920, 0);
//             break;

//         default:
//             break;
//     }

//     func_80890740(&this, globalCtx);
//     this->dyna.actor.colChkInfo.mass = 255;

//     if (!((this->dyna.actor.params >> 6) & 0x1) && (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F))) {
//         Actor_Kill(&this->dyna.actor);
//         return;
//     }

//     func_80891064(&this->dyna.actor);
//     osSyncPrintf("(ice shelter)(arg_data 0x%04x)\n", this->dyna.actor.params);
// }

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Destroy.s")
void BgIceShelter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIceShelter* this = (BgIceShelter*)thisx;
    switch ((this->dyna.actor.params >> 8) & 0x7) {
        case 2:
        case 3:
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            break;

        case 0:
        case 1:
        case 4:
            Collider_DestroyCylinder(globalCtx, &this->colliders[1]);
            break;
    }
    Collider_DestroyCylinder(globalCtx, &this->colliders[0]);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890B8C.s")
// void func_80890B8C(s32 arg0, void *arg1, f32 arg2, f32 arg3) {
//     f32 spB4;
//     f32 spB0;
//     f32 spAC;
//     f32 spA8;
//     f32 spA4;
//     f32 spA0;
//     f32 sp9C;
//     f32 sp98;
//     f32 sp94;
//     f32 temp_f0;
//     f32 temp_f10;
//     f32 temp_f18;
//     f32 temp_f20;
//     f32 temp_f22;
//     f32 temp_f24;
//     f32 temp_f8;
//     s32 temp_s1;
//     s32 temp_s2;
//     s32 temp_s4;
//     void *temp_s0;
//     s32 phi_s2;
//     temp_s4 = (s32) ((arg1->unk9E & 7) << 0x10) >> 0x10;
//     phi_s2 = 0;
// loop_1:
//     if (!(arg2 < Math_Rand_ZeroOne())) {
//         temp_f22 = 42.0f * arg3;
//         temp_s0 = arg0 + 0x24;
//         temp_s1 = (s32) ((*(&D_80891794 + (temp_s4 * 2)) + (phi_s2 << 0xF)) << 0x10) >> 0x10;
//         temp_f20 = Math_Sins((s32) (temp_s1 << 0x10) >> 0x10);
//         temp_f0 = Math_Coss((s32) (temp_s1 << 0x10) >> 0x10);
//         temp_f24 = temp_f0;
//         temp_f18 = temp_f22 * temp_f0;
//         spAC = (temp_f22 * temp_f20) + temp_s0->unk0;
//         spB0 = (16.0f * arg3) + temp_s0->unk4;
//         spB4 = temp_f18 + temp_s0->unk8;
//         temp_f8 = Math_Rand_ZeroOne() * 3.0f;
//         spA4 = 0.0f;
//         spA0 = (temp_f8 - 1.0f) * temp_f20;
//         temp_f10 = (Math_Rand_ZeroOne() * 3.0f) - 1.0f;
//         sp98 = 0.8f;
//         spA8 = temp_f10 * temp_f24;
//         sp94 = 0.07f * temp_f20;
//         sp9C = 0.07f * temp_f24;
//         func_8002829C(arg1, &spAC, &spA0, &sp94, &D_80891704, &D_80891708, (s32) ((s32) (450.0f * arg3) << 0x10) >>
//         0x10, (s32) ((f32) ((s32) ((s32) ((Math_Rand_ZeroOne() * 40.0f) + 40.0f) << 0x10) >> 0x10) * arg3));
//     }
//     temp_s2 = phi_s2 + 1;
//     phi_s2 = temp_s2;
//     if (temp_s2 != 2) {
//         goto loop_1;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890E00.s")
// void func_80890E00(void *arg0, void *arg1, f32 arg2, ? arg3) {
//     ? spBC;
//     f32 spB8;
//     f32 spB4;
//     f32 spB0;
//     f32 spAC;
//     f32 spA8;
//     f32 spA4;
//     f32 spA0;
//     f32 sp9C;
//     f32 sp98;
//     f32 temp_f10;
//     f32 temp_f6;
//     f32 temp_f6_2;
//     s32 temp_s3;
//     s32 temp_s6;
//     s32 phi_s3;
//     temp_s6 = (s32) ((arg1->unk9E & 7) << 0x10) >> 0x10;
//     phi_s3 = 0;
// loop_1:
//     if (!(arg2 < Math_Rand_ZeroOne())) {
//         temp_f6 = Math_Rand_ZeroOne() * 12.0f;
//         sp9C = 15.0f;
//         sp98 = *((phi_s3 * 4) + &D_808917B4) * ((f32) *((temp_s6 * 2) + &D_808917A4) + (temp_f6 - 6.0f));
//         spA0 = (Math_Rand_ZeroOne() * 20.0f) + ((84.0f - sp98) * 0.2f);
//         func_808908FC(&spBC, &sp98, arg0->unk32);
//         Math_Vec3f_Sum(&spBC, arg0 + 0x24, &spBC);
//         temp_f6_2 = Math_Rand_ZeroOne() * 3.0f;
//         spB4 = 0.0f;
//         spB0 = temp_f6_2 - 1.5f;
//         spB8 = (Math_Rand_ZeroOne() * 3.0f) - 1.5f;
//         temp_f10 = Math_Rand_ZeroOne() * 0.14f;
//         spA8 = 0.8f;
//         spA4 = temp_f10 - 0.07f;
//         spAC = (Math_Rand_ZeroOne() * 0.14f) - 0.07f;
//         func_8002829C(arg1, &spBC, &spB0, &spA4, &D_80891704, &D_80891708, 0x1C2, (s32) ((Math_Rand_ZeroOne()
//         * 40.0f) + 40.0f));
//     }
//     temp_s3 = phi_s3 + 1;
//     phi_s3 = temp_s3;
//     if (temp_s3 != 2) {
//         goto loop_1;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80891064.s")
// void func_80891064(BgIceShelter* this) {
//     this->actionFunc = &func_8089107C;
//     this->colliders[2].base.shape = 0xFF;  // TODO: refactor this to match
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_8089107C.s")
// void func_8089107C(void *arg0, s32 arg1) {
//     s16 sp32;
//     s32 sp28;
//     void *sp24;
//     s32 temp_a1;
//     s32 temp_a2;
//     u8 temp_v0_2;
//     void *temp_a3;
//     void *temp_v0;
//     void *temp_v0_3;
//     void *temp_v1;
//     s32 phi_a1;
//     void *phi_a3;
//     temp_a2 = (((s32) arg0->unk1C >> 8) & 7) << 0x10;
//     temp_a2 = temp_a2 >> 0x10;
//     if (temp_a2 == 4) {
//         temp_v0 = arg0->unk118;
//         if (temp_v0 != 0) {
//             temp_v0->unk110 = (u16)0x2710;
//         }
//     }
//     temp_v0_2 = arg0->unk179;
//     if ((temp_v0_2 & 2) != 0) {
//         temp_v1 = arg0->unk170;
//         arg0->unk179 = (u8) (temp_v0_2 & 0xFFFD);
//         if (temp_v1 != 0) {
//             if (*temp_v1 == 0xF0) {
//                 if (temp_a2 == 4) {
//                     temp_v0_3 = arg0->unk118;
//                     if (temp_v0_3 != 0) {
//                         temp_v0_3->unk110 = (u16)0x32;
//                     }
//                 }
//                 sp32 = (s16) temp_a2;
//                 func_808911BC(arg0, temp_a2, 4);
//                 Audio_PlayActorSound2(arg0, 0x28A2);
//             }
//         }
//     }
//     if ((((temp_a2 >> 0x10) != 0) && ((temp_a2 >> 0x10) != 1)) && ((temp_a2 >> 0x10) != 4)) {
//         phi_a1 = arg1 + 0x11E60;
//         phi_a3 = arg0 + 0x168;
//     } else {
//         temp_a3 = arg0 + 0x168;
//         temp_a1 = arg1 + 0x11E60;
//         sp28 = temp_a1;
//         sp24 = temp_a3;
//         CollisionCheck_SetOC(arg1, temp_a1, temp_a3, temp_a3);
//         CollisionCheck_SetAC(arg1, temp_a1, arg0 + 0x1B4);
//         phi_a1 = temp_a1;
//         phi_a3 = temp_a3;
//     }
//     CollisionCheck_SetAC(arg1, phi_a1, phi_a3, phi_a3);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808911BC.s")
// void func_808911BC(BgIceShelter* this) {
//     this->actionFunc = &func_808911D4;
//     arg0->unk200 = (u16)0xFF;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808911D4.s")
// void func_808911D4(void *arg0, s32 arg1) {
//     s32 sp2C;
//     s32 sp28;
//     void *sp24;
//     f32 temp_f0;
//     s16 temp_v0;
//     s16 temp_v0_3;
//     s32 temp_a1;
//     s32 temp_a2;
//     s32 temp_v1;
//     void *temp_v0_2;
//     s16 phi_v1;
//     ? phi_f0;
//     arg0->unk200 = (s16) (arg0->unk200 - 5);
//     temp_v0 = arg0->unk200;
//     temp_a2 = ((s32) arg0->unk1C >> 8) & 7;
//     if ((s32) temp_v0 < 0) {
//         arg0->unk200 = (u16)0;
//     } else {
//         phi_v1 = temp_v0;
//         if ((s32) temp_v0 >= 0x100) {
//             phi_v1 = (u16)0xFF;
//         }
//         arg0->unk200 = phi_v1;
//     }
//     temp_v1 = temp_a2 * 4;
//     arg0->unk54 = (f32) (arg0->unk54 + *(&D_808917BC + temp_v1));
//     temp_f0 = arg0->unk54;
//     if (temp_f0 < 0.0001f) {
//         arg0->unk54 = 0.0001f;
//     } else {
//         arg0->unk54 = temp_f0;
//     }
//     if ((s32) arg0->unk200 >= 0x51) {
//         if (((temp_a2 == 0) || (temp_a2 == 1)) || (temp_a2 == 4)) {
//             temp_a1 = arg1 + 0x11E60;
//             sp2C = temp_a1;
//             sp28 = temp_v1;
//             CollisionCheck_SetOC(arg1, temp_a1, arg0 + 0x168);
//             CollisionCheck_SetAC(arg1, temp_a1, arg0 + 0x1B4);
//         } else {
//         }
//     }
//     if ((s32) arg0->unk200 >= 0xB5) {
//         phi_f0 = 0x3F800000;
//     } else {
//         if ((s32) arg0->unk200 >= 0x3D) {
//             phi_f0 = 0x3F000000;
//         } else {
//             phi_f0 = 0;
//         }
//     }
//     temp_v0_2 = (temp_a2 * 4) + &D_808917E4;
//     sp24 = temp_v0_2;
//     *temp_v0_2(arg0, arg1, phi_f0, *(&D_808917D0 + (temp_a2 * 4)));
//     if ((s32) arg0->unk200 <= 0) {
//         temp_v0_3 = arg0->unk1C;
//         if ((((s32) temp_v0_3 >> 6) & 1) == 0) {
//             Flags_SetSwitch(arg1, temp_v0_3 & 0x3F);
//         }
//         if (sp24 == &D_808917F4) {
//             func_80078884(0x4802);
//         }
//         Actor_Kill(arg0);
//     }
// }

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Update.s")
void BgIceShelter_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgIceShelter* this = THIS;
    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Draw.s")
// void BgIceShelter_Draw(void *arg0, void *arg1) {
//     ? sp6C;
//     void *sp68;
//     void *sp60;
//     void *sp58;
//     void *sp54;
//     void *sp44;
//     s32 temp_a2;
//     s32 temp_a3;
//     s32 temp_v0_2;
//     s32 temp_v1;
//     s32 temp_v1_2;
//     s32 temp_v1_3;
//     u32 temp_t7;
//     void *temp_a1;
//     void *temp_s0;
//     void *temp_v0;
//     void *temp_v0_3;
//     void *temp_v0_4;
//     void *temp_v0_5;
//     void *temp_v0_6;
//     void *temp_v0_7;
//     void *temp_v0_8;
//     void *temp_v0_9;
//     temp_a1 = arg1->unk0;
//     temp_s0 = temp_a1;
//     Graph_OpenDisps(&sp6C, temp_a1, "../z_bg_ice_shelter.c", 0x2EC);
//     func_80093D84(arg1->unk0);
//     temp_v0 = temp_s0->unk2D0;
//     temp_s0->unk2D0 = (void *) (temp_v0 + 8);
//     temp_v0->unk0 = 0xDA380003;
//     sp68 = temp_v0;
//     sp68->unk4 = Matrix_NewMtx(arg1->unk0, "../z_bg_ice_shelter.c", 0x2EF);
//     temp_v0_2 = ((s32) arg0->unk1C >> 8) & 7;
//     if ((((temp_v0_2 == 0) || (temp_v0_2 == 1)) || (temp_v0_2 == 2)) || (temp_v0_2 == 4)) {
//         func_8002ED80(arg0, arg1, 0);
//     } else {
//     }
//     temp_v0_3 = temp_s0->unk2D0;
//     temp_s0->unk2D0 = (void *) (temp_v0_3 + 8);
//     temp_v0_3->unk0 = 0xFB000000;
//     temp_v0_3->unk4 = (s32) ((arg0->unk200 & 0xFF) | 0xFF000000);
//     temp_t7 = ((s32) arg0->unk1C >> 8) & 7;
//     if (temp_t7 < 5U) {
//         goto **(&jtbl_808918F0 + (temp_t7 * 4));
//     default:
//         temp_v0_4 = temp_s0->unk2D0;
//         temp_s0->unk2D0 = (void *) (temp_v0_4 + 8);
//         temp_v0_4->unk0 = 0xDB060020;
//         temp_v1 = arg1->unk11DE4;
//         temp_a2 = (0 - temp_v1) & 0x7F;
//         sp60 = temp_v0_4;
//         sp60->unk4 = Gfx_TwoTexScroll(arg1->unk0, 0, temp_a2, temp_a2, 0x20, 0x20, 1, temp_a2, temp_v1 & 0x7F, 0x20,
//         0x20); temp_v0_5 = temp_s0->unk2D0; temp_s0->unk2D0 = (void *) (temp_v0_5 + 8); temp_v0_5->unk4 = 0x60006F0;
//         temp_v0_5->unk0 = 0xDE000000;
//         goto block_10;
//     case 2:
//         temp_v0_6 = temp_s0->unk2D0;
//         temp_s0->unk2D0 = (void *) (temp_v0_6 + 8);
//         temp_v0_6->unk0 = 0xDB060020;
//         temp_v1_2 = arg1->unk11DE4;
//         sp44 = arg1 + 0x10000;
//         sp58 = temp_v0_6;
//         sp58->unk4 = Gfx_TwoTexScroll(arg1->unk0, 0, 0, temp_v1_2 & 0xFF, 0x40, 0x40, 1, 0, (0 - temp_v1_2) & 0xFF,
//         0x40, 0x40); temp_v0_7 = temp_s0->unk2D0; temp_s0->unk2D0 = (void *) (temp_v0_7 + 8); temp_v0_7->unk0 =
//         0xDB060024; temp_v1_3 = arg1->unk11DE4; temp_a3 = temp_v1_3 & 0xFF; sp54 = temp_v0_7; sp54->unk4 =
//         Gfx_TwoTexScroll(arg1->unk0, 0, (0 - temp_v1_3) & 0xFF, temp_a3, 0x40, 0x40, 1, temp_a3, temp_a3, 0x40,
//         0x40); temp_v0_8 = temp_s0->unk2D0; temp_s0->unk2D0 = (void *) (temp_v0_8 + 8); temp_v0_8->unk4 = 0x60012A0;
//         temp_v0_8->unk0 = 0xDE000000;
//         goto block_10;
//     case 3:
//         temp_v0_9 = temp_s0->unk2D0;
//         temp_s0->unk2D0 = (void *) (temp_v0_9 + 8);
//         temp_v0_9->unk0 = 0xDE000000;
//         temp_v0_9->unk4 = 0x6002640;
//     }
// block_10:
//     Graph_CloseDisps(&sp6C, arg1->unk0, "../z_bg_ice_shelter.c", 0x32F);
// }
