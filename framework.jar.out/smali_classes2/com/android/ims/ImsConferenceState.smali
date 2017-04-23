.class public Lcom/android/ims/ImsConferenceState;
.super Ljava/lang/Object;
.source "ImsConferenceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConferenceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsConferenceState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_TEXT:Ljava/lang/String; = "display-text"

.field public static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field public static final SIP_STATUS_CODE:Ljava/lang/String; = "sipstatuscode"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ALERTING:Ljava/lang/String; = "alerting"

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_CONNECT_FAIL:Ljava/lang/String; = "connect-fail"

.field public static final STATUS_DIALING_IN:Ljava/lang/String; = "dialing-in"

.field public static final STATUS_DIALING_OUT:Ljava/lang/String; = "dialing-out"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_DISCONNECTING:Ljava/lang/String; = "disconnecting"

.field public static final STATUS_MUTED_VIA_FOCUS:Ljava/lang/String; = "muted-via-focus"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field public static final USER:Ljava/lang/String; = "user"


# instance fields
.field public mParticipants:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/android/ims/ImsConferenceState$1;

    invoke-direct {v0}, Lcom/android/ims/ImsConferenceState$1;-><init>()V

    .line 139
    sput-object v0, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/ims/ImsConferenceState;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method public static getConnectionStateForStatus(Ljava/lang/String;)I
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 159
    const-string/jumbo v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    const-string/jumbo v0, "dialing-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x2

    return v0

    .line 163
    :cond_1
    const-string/jumbo v0, "alerting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const-string/jumbo v0, "dialing-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    if-eqz v0, :cond_3

    .line 165
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 166
    :cond_3
    const-string/jumbo v0, "on-hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    const/4 v0, 0x5

    return v0

    .line 168
    :cond_4
    const-string/jumbo v0, "connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    const-string/jumbo v0, "muted-via-focus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_5

    .line 170
    const-string/jumbo v0, "disconnecting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 171
    :cond_5
    return v1

    .line 172
    :cond_6
    const-string/jumbo v0, "disconnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    const/4 v0, 0x6

    return v0

    .line 175
    :cond_7
    return v1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "user":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 135
    .local v2, "state":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "state":Landroid/os/Bundle;
    .end local v3    # "user":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 110
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :cond_0
    return-void
.end method
