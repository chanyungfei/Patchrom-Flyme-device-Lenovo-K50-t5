.class Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$2;
.super Ljava/lang/Object;
.source "AutoBrightnessLenovo.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$2;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$2;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-wrap2(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Z)V

    .line 788
    return-void
.end method
