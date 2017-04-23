.class public Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static accept_perm:Ljava/lang/String;

.field public static deny_perm:Ljava/lang/String;

.field public static notify_dialog_msg_body:Ljava/lang/String;

.field public static notify_dialog_title:Ljava/lang/String;

.field public static permission_block_network:Ljava/lang/String;

.field public static time_count_down_hint:Ljava/lang/String;

.field public static toast_deny_msg_body:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "notify_dialog_title"

    .line 2649
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_title:Ljava/lang/String;

    const-string/jumbo v0, "accept_perm"

    .line 2650
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->accept_perm:Ljava/lang/String;

    const-string/jumbo v0, "deny_perm"

    .line 2651
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->deny_perm:Ljava/lang/String;

    const-string/jumbo v0, "notify_dialog_msg_body"

    .line 2652
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_msg_body:Ljava/lang/String;

    const-string/jumbo v0, "toast_deny_msg_body"

    .line 2653
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->toast_deny_msg_body:Ljava/lang/String;

    const-string/jumbo v0, "time_count_down_hint"

    .line 2654
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->time_count_down_hint:Ljava/lang/String;

    const-string/jumbo v0, "permission_block_network"

    .line 2655
    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->permission_block_network:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
