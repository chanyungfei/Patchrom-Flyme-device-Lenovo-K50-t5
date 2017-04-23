.class Landroid/webkit/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    .prologue
    .line 1051
    iput-object p1, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1054
    invoke-static {}, Landroid/webkit/WebView;->-get1()Lcom/mediatek/perfservice/IPerfServiceWrapper;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebView;->-get0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->userUnreg(I)V

    .line 1053
    return-void
.end method
