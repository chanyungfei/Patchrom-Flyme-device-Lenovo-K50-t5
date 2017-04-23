.class Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCardtypeRunnable"
.end annotation


# instance fields
.field mRetryIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->mRetryIndex:Ljava/lang/Integer;

    .line 321
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->mRetryIndex:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap1(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V

    .line 325
    return-void
.end method
