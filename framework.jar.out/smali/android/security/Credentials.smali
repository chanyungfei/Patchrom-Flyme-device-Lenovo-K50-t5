.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final EXTRA_CA_CERTIFICATES_NAME:Ljava/lang/String; = "ca_certificates_name"

.field public static final EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final EXTRA_USER_CERTIFICATE_NAME:Ljava/lang/String; = "user_certificate_name"

.field public static final EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final EXTRA_USER_PRIVATE_KEY_NAME:Ljava/lang/String; = "user_private_key_name"

.field public static final EXTRA_WAPI_SERVER_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_server_certificate_data"

.field public static final EXTRA_WAPI_SERVER_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_server_certificate_name"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_user_certificate_data"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_user_certificate_name"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final USER_SECRET_KEY:Ljava/lang/String; = "USRSKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WAPI_SERVER_CERTIFICATE:Ljava/lang/String; = "WAPISERVERCERT_"

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSERCERT_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"

.field private static singleton:Landroid/security/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromPem([B)Ljava/util/List;
    .locals 10
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    .local v0, "bai":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 189
    .local v5, "reader":Ljava/io/Reader;
    new-instance v4, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 191
    .local v4, "pr":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    const-string/jumbo v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 193
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v3

    .local v3, "o":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "CERTIFICATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 198
    .local v1, "c":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 203
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 204
    return-object v6
.end method

.method public static varargs convertToPem([Ljava/security/cert/Certificate;)[B
    .locals 9
    .param p0, "objects"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 174
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 175
    .local v2, "pw":Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p0, v4

    .line 176
    .local v1, "o":Ljava/security/cert/Certificate;
    new-instance v6, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    const-string/jumbo v7, "CERTIFICATE"

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "o":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 3
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 265
    or-int/2addr v0, v1

    .line 267
    invoke-static {p0, p1}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v1

    .line 265
    or-int/2addr v0, v1

    return v0
.end method

.method public static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 3
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRCERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 280
    or-int/2addr v0, v1

    return v0
.end method

.method static deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRSKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/security/Credentials;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/security/Credentials;

    invoke-direct {v0}, Landroid/security/Credentials;-><init>()V

    sput-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    .line 213
    :cond_0
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    return-object v0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 248
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 249
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PKEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 238
    const-string/jumbo v2, "KEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
