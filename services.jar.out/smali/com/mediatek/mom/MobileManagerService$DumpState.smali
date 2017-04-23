.class Lcom/mediatek/mom/MobileManagerService$DumpState;
.super Ljava/lang/Object;
.source "MobileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpState"
.end annotation


# static fields
.field public static final DUMP_ALL:I = 0x100000

.field public static final DUMP_CALL:I = 0x40

.field public static final DUMP_FIREWALL:I = 0x10

.field public static final DUMP_MESSAGE:I = 0x20

.field public static final DUMP_NOTIFICATION:I = 0x8

.field public static final DUMP_PACKAGE:I = 0x2

.field public static final DUMP_PERMISSION:I = 0x1

.field public static final DUMP_RECEIVER:I = 0x4


# instance fields
.field private mTypes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDumping(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    iget v1, p0, Lcom/mediatek/mom/MobileManagerService$DumpState;->mTypes:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDump(I)V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/mediatek/mom/MobileManagerService$DumpState;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mom/MobileManagerService$DumpState;->mTypes:I

    .line 207
    return-void
.end method
