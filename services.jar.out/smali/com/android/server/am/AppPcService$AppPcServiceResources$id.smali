.class public Lcom/android/server/am/AppPcService$AppPcServiceResources$id;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "id"
.end annotation


# static fields
.field public static checkbox:I

.field public static hint:I

.field public static message:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x102000b

    .line 2662
    sput v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->message:I

    const v0, 0x1020005

    .line 2663
    sput v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->hint:I

    const v0, 0x1020001

    .line 2664
    sput v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->checkbox:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
