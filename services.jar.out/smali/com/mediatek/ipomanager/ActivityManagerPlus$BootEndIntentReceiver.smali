.class public Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootEndIntentReceiver"
.end annotation


# instance fields
.field private mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

.field private mCause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 417
    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 418
    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 422
    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 423
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 432
    return-void
.end method
