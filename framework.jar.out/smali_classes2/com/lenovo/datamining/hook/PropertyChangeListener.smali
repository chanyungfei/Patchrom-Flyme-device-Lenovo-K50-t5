.class public Lcom/lenovo/datamining/hook/PropertyChangeListener;
.super Ljava/lang/Object;
.source "PropertyChangeListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyChangeListener"


# instance fields
.field private mLastSetting:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "true"

    .line 14
    const-string/jumbo v1, "persist.sys.backgrounddata"

    .line 15
    const-string/jumbo v2, "false"

    .line 13
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/datamining/hook/PropertyChangeListener;->mLastSetting:Z

    .line 19
    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onPropertyChange(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "persist.sys.backgrounddata"

    .line 24
    const-string/jumbo v6, "false"

    .line 23
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 25
    .local v2, "nowSetting":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 27
    .local v3, "nowValue":I
    :goto_0
    iget-boolean v4, p0, Lcom/lenovo/datamining/hook/PropertyChangeListener;->mLastSetting:Z

    if-eq v2, v4, :cond_0

    .line 28
    const-string/jumbo v4, "PropertyChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPropertyChange: nowSetting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-boolean v2, p0, Lcom/lenovo/datamining/hook/PropertyChangeListener;->mLastSetting:Z

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "sds_background_data"

    .line 36
    const/4 v5, 0x0

    .line 35
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 37
    const-string/jumbo v4, "PropertyChangeListener"

    const-string/jumbo v5, "onPropertyChange: saving to provider"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string/jumbo v4, "sds_background_data"

    .line 38
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-void

    .line 25
    .end local v3    # "nowValue":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "nowValue":I
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
