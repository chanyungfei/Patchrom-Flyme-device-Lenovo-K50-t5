.class public Landroid/text/style/URLSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xb

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "URLSpan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Actvity was not found for intent, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
