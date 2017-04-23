.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$1;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT2_KEY:Ljava/lang/String; = "ca_cert2"

.field public static final CA_CERT2_PREFIX:Ljava/lang/String; = "keystore://WAPISERVERCERT_"

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field private static final CLIENT_CERT2_PREFIX:Ljava/lang/String; = "keystore://WAPIUSERCERT_"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"

.field public static final USER_PRIVATE_KEY2_PREFIX:Ljava/lang/String; = "keystore://WAPIUSERCERT_"


# instance fields
.field private mCaCert:Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    .line 188
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 141
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .prologue
    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    .line 717
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 718
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 717
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_2
    return p3
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    .line 697
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 698
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 699
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 700
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 702
    :cond_1
    return-object p1
.end method

.method private writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 175
    if-eqz p2, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 178
    .local v0, "certBytes":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 184
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 613
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificateWapiAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    const-string/jumbo v0, "ca_cert2"

    const-string/jumbo v1, "keystore://WAPISERVERCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateWapiAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 840
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://WAPIUSERCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    const-string/jumbo v0, "domain_suffix_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "eap"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 734
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 738
    :cond_2
    return-object v0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 682
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "eap"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 683
    .local v0, "eap":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "phase2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 686
    .local v1, "phase2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "eap"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eap":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 689
    .restart local v0    # "eap":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "phase2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "phase2":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 692
    .restart local v1    # "phase2":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "phase2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "phase2Method":Ljava/lang/String;
    const-string/jumbo v1, "auth="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const-string/jumbo v1, "auth="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 660
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 595
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetCaCertificate()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    .line 492
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 569
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 567
    return-void
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    .line 470
    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_0

    .line 472
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    .line 469
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 446
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setCaCertificateWapiAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 792
    const-string/jumbo v0, "ca_cert2"

    const-string/jumbo v1, "keystore://WAPISERVERCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "key_id"

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setClientCertificateWapiAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 820
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://WAPIUSERCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string/jumbo v0, "key_id"

    const-string/jumbo v1, "keystore://WAPIUSERCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 539
    if-eqz p2, :cond_2

    .line 540
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot be a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    if-nez p1, :cond_1

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client cert without a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 552
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 538
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 635
    const-string/jumbo v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 329
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "eap"

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "proactive_key_caching"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 4
    .param p1, "phase2Method"    # I

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase2"

    const-string/jumbo v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :goto_0
    return-void

    .line 365
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase2"

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 668
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 652
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .prologue
    .line 586
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 773
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 774
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 777
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 161
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_1

    .line 162
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 164
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 152
    return-void

    .line 168
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
