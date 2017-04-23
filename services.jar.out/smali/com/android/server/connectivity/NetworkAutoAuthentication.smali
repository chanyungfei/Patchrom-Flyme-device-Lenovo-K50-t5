.class public Lcom/android/server/connectivity/NetworkAutoAuthentication;
.super Ljava/lang/Object;
.source "NetworkAutoAuthentication.java"


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HTTP_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HTTP_SOCKET_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final LENOVO_AUTO_AUTHORIZE_SUPPORT:Z = true

.field private static final LENOVO_CHECK_INVALID_WLAN_SUPPORT:Z = true

.field private static final LENOVO_POPUP_DIALOG_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkAutoAuthentication"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

.field private static final mServer:Ljava/lang/String; = "captive.apple.com"


# instance fields
.field private DBG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAutoAuthentication;->DBG:Z

    .line 35
    return-void
.end method

.method private static addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .param p0, "getMethod"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "x-wap-profile"

    const-string/jumbo v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip,deflate"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "Accept-Language"

    const-string/jumbo v1, "zh-CN, en-US"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "Accept-Charset"

    const-string/jumbo v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "X-Requested-with"

    const-string/jumbo v1, "com.lenovo.browser"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static autoAutheticate(Landroid/content/Context;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 375
    invoke-static {}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->getCaptivePortalUrl()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoAuthorize Redirect to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 378
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->isNeedAuthenticate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-static {p0, v1}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->doAutheticate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 384
    :goto_0
    return v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public static doAutheticate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v9, 0x0

    .line 319
    .local v9, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 320
    .local v5, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 322
    .local v10, "result":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 324
    .local v11, "statusCode":I
    const-string/jumbo v14, "autoAuthorize, step 3 "

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 326
    .local v13, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v13, :cond_0

    .line 327
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 328
    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v12, :cond_0

    .line 329
    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 333
    .end local v10    # "result":[Ljava/lang/String;
    .end local v12    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string/jumbo v14, "autoAuthorize, step 4 "

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 334
    if-eqz v10, :cond_4

    .line 335
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Username: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", Password: *"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 337
    :try_start_0
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 338
    .local v7, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 339
    .local v8, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v8, :cond_1

    .line 340
    const-string/jumbo v14, "http.protocol.handle-redirects"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 341
    const-string/jumbo v14, "http.socket.timeout"

    .line 342
    const/16 v15, 0x1388

    .line 341
    invoke-interface {v8, v14, v15}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 343
    const-string/jumbo v14, "http.connection.timeout"

    .line 344
    const/16 v15, 0x1388

    .line 343
    invoke-interface {v8, v14, v15}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 346
    :cond_1
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v6, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v1, Lorg/apache/http/auth/NTCredentials;

    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 348
    .local v1, "creds":Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v14

    sget-object v15, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-interface {v14, v15, v1}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 349
    invoke-virtual {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 350
    .local v9, "response":Lorg/apache/http/HttpResponse;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 351
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 352
    const/16 v14, 0x191

    if-ne v11, v14, :cond_2

    .line 353
    const/4 v14, 0x0

    return v14

    .line 355
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Authorization is SUCCESS, ResponseCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 356
    const/4 v14, 0x1

    return v14

    :cond_3
    move-object v5, v6

    .line 367
    .end local v1    # "creds":Lorg/apache/http/auth/NTCredentials;
    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "params":Lorg/apache/http/params/HttpParams;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_0
    const/4 v14, 0x0

    return v14

    .line 362
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 363
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 361
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v4

    .line 359
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "params":Lorg/apache/http/params/HttpParams;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    move-object v5, v6

    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v5, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 360
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 362
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method

.method public static getCaptivePortalUrl()Ljava/lang/String;
    .locals 19

    .prologue
    .line 204
    const/4 v12, 0x0

    .line 205
    .local v12, "response":Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 207
    .local v6, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 208
    .local v14, "statusCode":I
    const/4 v11, 0x0

    .line 209
    .local v11, "redirect_count":I
    const/4 v15, 0x1

    .line 211
    .local v15, "step":I
    const/4 v13, 0x0

    .line 212
    .local v13, "responseString":Ljava/lang/String;
    const-string/jumbo v16, "http://captive.apple.com"

    .line 214
    .local v16, "uriString":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 215
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    .line 216
    .local v10, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v10, :cond_0

    .line 217
    const-string/jumbo v17, "http.protocol.handle-redirects"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 218
    const-string/jumbo v17, "http.socket.timeout"

    .line 219
    const/16 v18, 0x1388

    .line 218
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 220
    const-string/jumbo v17, "http.connection.timeout"

    .line 221
    const/16 v18, 0x1388

    .line 220
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 225
    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "autoAuthorize, step 1, uri: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 227
    :try_start_0
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v7, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 229
    invoke-virtual {v8, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v12

    .local v12, "response":Lorg/apache/http/HttpResponse;
    move-object v6, v7

    .line 240
    .end local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    if-eqz v12, :cond_3

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 241
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 242
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "autoAuthorize responseCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 243
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 244
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 245
    :cond_1
    const-string/jumbo v17, "location"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 246
    .local v9, "locationHeader":Lorg/apache/http/Header;
    if-eqz v9, :cond_2

    .line 247
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 249
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 252
    .end local v9    # "locationHeader":Lorg/apache/http/Header;
    :cond_3
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    .line 253
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    :cond_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v11, v0, :cond_0

    .line 255
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v11, v0, :cond_7

    .line 256
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-eq v14, v0, :cond_6

    .line 257
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    .line 258
    :cond_6
    const-string/jumbo v17, "Too Many Redirect"

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 259
    const/16 v17, 0x0

    return-object v17

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 235
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 231
    .local v4, "e":Ljava/lang/IllegalStateException;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    return-object v16

    .line 230
    .restart local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    move-object v6, v7

    .end local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v6, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 232
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .end local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 234
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    move-object v6, v7

    .end local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 236
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method

.method private static getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 20
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v9, 0x0

    .line 108
    .local v9, "networkInfoMask":Z
    const/16 v17, 0x0

    .local v17, "userName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 111
    .local v10, "passWord":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "preSharedKey":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "identity":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "password":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, "BSSID":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 114
    const/16 v18, 0x0

    return-object v18

    .line 117
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 119
    const/4 v13, 0x0

    .line 121
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v18, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 124
    const-string/jumbo v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 125
    const/16 v18, 0x0

    return-object v18

    .line 127
    :cond_1
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 129
    const/16 v16, 0x0

    .line 131
    .local v16, "start":I
    const-string/jumbo v18, "network={"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 132
    const/4 v9, 0x1

    .line 133
    const/4 v3, 0x0

    .line 134
    .restart local v3    # "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 135
    .restart local v2    # "BSSID":Ljava/lang/String;
    const/4 v7, 0x0

    .line 136
    .restart local v7    # "identity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 137
    .restart local v11    # "password":Ljava/lang/String;
    const/4 v12, 0x0

    .line 155
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_2

    .line 156
    const-string/jumbo v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_a

    .line 157
    const-string/jumbo v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "bssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 158
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "BSSID":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v2    # "BSSID":Ljava/lang/String;
    :cond_4
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 139
    const/4 v9, 0x0

    .line 140
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[Auto Authorize] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 141
    const-string/jumbo v19, ", BSSID: "

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 141
    const-string/jumbo v19, ", identity: "

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 142
    const-string/jumbo v19, ", password: "

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 142
    const-string/jumbo v19, "*"

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 142
    const-string/jumbo v19, ", psk: "

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 142
    const-string/jumbo v19, "*"

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 143
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    if-eqz v18, :cond_3

    .line 144
    if-eqz v7, :cond_9

    if-eqz v11, :cond_9

    .line 145
    move-object/from16 v17, v7

    .line 146
    .local v17, "userName":Ljava/lang/String;
    move-object v10, v11

    .line 180
    .end local v10    # "passWord":Ljava/lang/String;
    .end local v16    # "start":I
    .end local v17    # "userName":Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v14, :cond_6

    .line 182
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_2
    move-object v13, v14

    .line 191
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    if-eqz v17, :cond_8

    if-nez v10, :cond_10

    .line 192
    :cond_8
    const-string/jumbo v18, "[Auto Authorize] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 193
    const/16 v18, 0x0

    return-object v18

    .line 147
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "passWord":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "start":I
    .local v17, "userName":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_5

    .line 148
    :try_start_3
    const-string/jumbo v17, ""

    .line 149
    .local v17, "userName":Ljava/lang/String;
    move-object v10, v12

    .local v10, "passWord":Ljava/lang/String;
    goto :goto_1

    .line 159
    .local v10, "passWord":Ljava/lang/String;
    .local v17, "userName":Ljava/lang/String;
    :cond_a
    const-string/jumbo v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_b

    .line 160
    const-string/jumbo v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "ssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 161
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "SSID":Ljava/lang/String;
    goto/16 :goto_0

    .line 162
    .end local v3    # "SSID":Ljava/lang/String;
    :cond_b
    const-string/jumbo v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_c

    .line 163
    const-string/jumbo v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "identity="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 164
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "identity":Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v7    # "identity":Ljava/lang/String;
    :cond_c
    const-string/jumbo v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_d

    .line 166
    const-string/jumbo v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "password="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 167
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .local v11, "password":Ljava/lang/String;
    goto/16 :goto_0

    .line 168
    .end local v11    # "password":Ljava/lang/String;
    :cond_d
    const-string/jumbo v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_2

    .line 169
    const-string/jumbo v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "psk="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 170
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v12

    .local v12, "preSharedKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 185
    .end local v10    # "passWord":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v16    # "start":I
    .end local v17    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 186
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v2, "BSSID":Ljava/lang/String;
    .local v3, "SSID":Ljava/lang/String;
    .local v7, "identity":Ljava/lang/String;
    .restart local v10    # "passWord":Ljava/lang/String;
    .local v11, "password":Ljava/lang/String;
    .local v12, "preSharedKey":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "userName":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 178
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    if-eqz v13, :cond_7

    .line 182
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 183
    :catch_3
    move-exception v4

    .line 184
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 186
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 174
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "BSSID":Ljava/lang/String;
    .restart local v3    # "SSID":Ljava/lang/String;
    .restart local v7    # "identity":Ljava/lang/String;
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v12    # "preSharedKey":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    .line 175
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    const/16 v18, 0x0

    .line 180
    if-eqz v13, :cond_e

    .line 182
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 176
    :cond_e
    :goto_6
    return-object v18

    .line 185
    :catch_6
    move-exception v5

    .line 186
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 184
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 179
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 180
    :goto_7
    if-eqz v13, :cond_f

    .line 182
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 179
    :cond_f
    :goto_8
    throw v18

    .line 185
    :catch_8
    move-exception v5

    .line 186
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 184
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "passWord":Ljava/lang/String;
    .end local v17    # "userName":Ljava/lang/String;
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 196
    const-string/jumbo v19, ", userName: "

    .line 195
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 196
    const-string/jumbo v19, ", passWord: "

    .line 195
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 196
    const-string/jumbo v19, "*"

    .line 195
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 197
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v15, v18

    const/16 v18, 0x1

    aput-object v10, v15, v18

    .line 199
    .local v15, "result":[Ljava/lang/String;
    return-object v15

    .line 179
    .end local v15    # "result":[Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v10    # "passWord":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "userName":Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 174
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static isNeedAuthenticate(Ljava/lang/String;)Z
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x1388

    const/4 v12, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    .local v8, "response":Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 270
    .local v4, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 272
    .local v9, "statusCode":I
    const-string/jumbo v10, "autoAuthorize, step 2"

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 273
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 274
    .local v6, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 275
    .local v7, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v7, :cond_0

    .line 276
    const-string/jumbo v10, "http.protocol.handle-redirects"

    invoke-interface {v7, v10, v12}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 277
    const-string/jumbo v10, "http.socket.timeout"

    invoke-interface {v7, v10, v11}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 279
    const-string/jumbo v10, "http.connection.timeout"

    invoke-interface {v7, v10, v11}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 283
    :cond_0
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v5, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 285
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v8

    .local v8, "response":Lorg/apache/http/HttpResponse;
    move-object v4, v5

    .line 294
    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    if-nez v10, :cond_2

    .line 295
    :cond_1
    return v12

    .line 290
    .restart local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v8, "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 291
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    .line 289
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v2

    .line 287
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 298
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "autoAuthorize responseCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 299
    const/16 v10, 0x191

    if-eq v9, v10, :cond_4

    .line 300
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 302
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_3

    .line 303
    :try_start_2
    const-string/jumbo v10, "utf-8"

    invoke-static {v3, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 310
    :cond_3
    :goto_4
    const-string/jumbo v10, "autoAuthorize, Authorization is NOT requested"

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 311
    return v12

    .line 307
    :catch_3
    move-exception v1

    .line 308
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    const/4 v10, 0x1

    return v10

    .line 286
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    move-object v4, v5

    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 288
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string/jumbo v0, "NetworkAutoAuthentication"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private static lookupHost(Ljava/lang/String;Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/net/InetAddress;
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v7, 0x0

    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "inetAddress":[Ljava/net/InetAddress;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lookupHost, hostName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 49
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-static {p0, v4}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 57
    .end local v3    # "inetAddress":[Ljava/net/InetAddress;
    :goto_0
    const-string/jumbo v4, "lookupHost success"

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 58
    const/4 v4, 0x0

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 59
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v6, v0, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    return-object v0

    .line 53
    .end local v0    # "a":Ljava/net/InetAddress;
    .restart local v3    # "inetAddress":[Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v4, "lookupHost, UnknownHostException"

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 52
    return-object v7

    .line 58
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v0    # "a":Ljava/net/InetAddress;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    return-object v7
.end method
