.class public Landroid/telecom/AudioState;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/AudioState$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final isMuted:Z

.field private final route:I

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Landroid/telecom/AudioState$1;

    invoke-direct {v0}, Landroid/telecom/AudioState$1;-><init>()V

    .line 137
    sput-object v0, Landroid/telecom/AudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 73
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    .line 74
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 79
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    .line 80
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 77
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 67
    iput p2, p0, Landroid/telecom/AudioState;->route:I

    .line 68
    iput p3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 65
    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    .prologue
    .line 106
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, -0x10

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    const-string/jumbo v1, "UNKNOWN"

    return-object v1

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 112
    const-string/jumbo v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 114
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 115
    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 117
    :cond_3
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 118
    const-string/jumbo v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 120
    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 121
    const-string/jumbo v1, "SPEAKER"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 124
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    instance-of v2, p1, Landroid/telecom/AudioState;

    if-nez v2, :cond_1

    .line 89
    return v1

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Landroid/telecom/AudioState;

    .line 92
    .local v0, "state":Landroid/telecom/AudioState;
    invoke-virtual {p0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 92
    :cond_2
    return v1
.end method

.method public getRoute()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    return v0
.end method

.method public getSupportedRouteMask()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    const-string/jumbo v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    .line 98
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    iget-boolean v3, p0, Landroid/telecom/AudioState;->isMuted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 101
    iget v3, p0, Landroid/telecom/AudioState;->route:I

    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 102
    iget v3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 98
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 167
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
