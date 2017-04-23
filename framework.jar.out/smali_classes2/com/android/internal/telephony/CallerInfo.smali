.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field private static final VDBG:Z = true


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 169
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 440
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    .line 441
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    .line 440
    if-eqz v1, :cond_0

    .line 442
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 446
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 444
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 449
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 344
    const/4 v6, 0x0

    .line 345
    .local v6, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 349
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 348
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 354
    .end local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-object v6

    .line 350
    .restart local v6    # "info":Lcom/android/internal/telephony/CallerInfo;
    :catch_0
    move-exception v7

    .line 351
    .local v7, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "Error getting caller info."

    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 186
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 187
    .local v0, "subId":I
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "subId"    # I

    .prologue
    .line 194
    new-instance v10, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 195
    .local v10, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    iput v1, v10, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 196
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 197
    const/4 v1, 0x0

    iput v1, v10, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 198
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 199
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 203
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "getCallerInfo() based on cursor..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz p2, :cond_12

    .line 206
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    const-string/jumbo v1, "display_name"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "columnIndex":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    .line 216
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 220
    :cond_0
    const-string/jumbo v1, "number"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 221
    const/4 v1, -0x1

    if-eq v6, v1, :cond_1

    .line 222
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 226
    :cond_1
    const-string/jumbo v1, "normalized_number"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 227
    const/4 v1, -0x1

    if-eq v6, v1, :cond_2

    .line 228
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 232
    :cond_2
    const-string/jumbo v1, "label"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 233
    const/4 v1, -0x1

    if-eq v6, v1, :cond_3

    .line 234
    const-string/jumbo v1, "type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 235
    .local v11, "typeColumnIndex":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_3

    .line 236
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 237
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 239
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 242
    iget v1, v10, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 241
    invoke-static {p0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 266
    .end local v11    # "typeColumnIndex":I
    :cond_3
    :goto_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v6

    .line 267
    const/4 v1, -0x1

    if-eq v6, v1, :cond_a

    .line 268
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 269
    .local v8, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-eqz v1, :cond_4

    invoke-static {v8, v9}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 284
    .end local v8    # "contactId":J
    :cond_4
    :goto_1
    const-string/jumbo v1, "lookup"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 285
    const/4 v1, -0x1

    if-eq v6, v1, :cond_5

    .line 286
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    .line 290
    :cond_5
    const-string/jumbo v1, "photo_uri"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 291
    const/4 v1, -0x1

    if-eq v6, v1, :cond_b

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 292
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 299
    :goto_2
    const-string/jumbo v1, "custom_ringtone"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 300
    const/4 v1, -0x1

    if-eq v6, v1, :cond_c

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 301
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 308
    :goto_3
    const-string/jumbo v1, "send_to_voicemail"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 309
    const/4 v1, -0x1

    if-eq v6, v1, :cond_e

    .line 310
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    .line 309
    :goto_4
    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 311
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 316
    .end local v6    # "columnIndex":I
    :cond_6
    :goto_5
    iget-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-nez v1, :cond_11

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 318
    const-string/jumbo v1, "send_to_voicemail"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 319
    .restart local v6    # "columnIndex":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_10

    .line 320
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    .line 319
    :goto_6
    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    goto :goto_5

    .line 248
    .restart local v11    # "typeColumnIndex":I
    :cond_7
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/ICallerInfoExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ICallerInfoExt;

    .line 249
    .local v0, "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    if-eqz v0, :cond_8

    .line 251
    iget v2, v10, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v3, v10, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    .line 250
    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ICallerInfoExt;->getTypeLabel(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/database/Cursor;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 256
    .end local v0    # "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    :catch_0
    move-exception v7

    .line 257
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "Fail to create plug-in"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 254
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    :cond_8
    :try_start_1
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "Fail to initialize ICallerInfoExt"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 270
    .end local v0    # "iCallerInfoExt":Lcom/mediatek/common/telephony/ICallerInfoExt;
    .end local v11    # "typeColumnIndex":I
    .restart local v8    # "contactId":J
    :cond_9
    iput-wide v8, v10, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    .line 272
    const-string/jumbo v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==> got info.contactIdOrZero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v10, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    .end local v8    # "contactId":J
    :cond_a
    const-string/jumbo v1, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t find contact_id column for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    :cond_b
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 303
    :cond_c
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 310
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 309
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 320
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 319
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 324
    .end local v6    # "columnIndex":I
    :cond_11
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 325
    const/4 p2, 0x0

    .line 328
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 329
    iget-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 330
    iput-object p1, v10, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 332
    return-object v10
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 371
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const/4 v3, 0x0

    return-object v3

    .line 395
    :cond_0
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    .line 399
    .local v2, "phoneType":I
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 401
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 402
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 403
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 405
    :cond_1
    return-object v1

    .line 407
    .end local v1    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    return-object v3

    .line 413
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 414
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 416
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 417
    .restart local v1    # "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 421
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 425
    :cond_4
    return-object v1
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 577
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 578
    const-string/jumbo v5, "\'..."

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 585
    .local v1, "columnName":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string/jumbo v1, "contact_id"

    .line 605
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 606
    .local v0, "columnIndex":I
    :goto_1
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, "\' (columnIndex = "

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, ") for person_id lookup..."

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v0

    .line 590
    .end local v0    # "columnIndex":I
    .restart local v1    # "columnName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string/jumbo v1, "contact_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 596
    .local v1, "columnName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 600
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string/jumbo v1, "_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 603
    .local v1, "columnName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "columnIndex":I
    goto :goto_1
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 700
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 682
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    .line 681
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 683
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 685
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 691
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 692
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 688
    .restart local v0    # "country":Landroid/location/Country;
    .local v1, "countryIso":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 633
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getGeoDescription(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\')..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 636
    return-object v12

    .line 641
    :cond_0
    const-string/jumbo v9, "ro.mtk_phone_number_geo"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 642
    invoke-static {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;

    move-result-object v4

    .line 643
    .local v4, "geoCodingQuery":Lcom/mediatek/geocoding/GeoCodingQuery;
    invoke-virtual {v4, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "cityName":Ljava/lang/String;
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[GeoCodingQuery] cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eqz v0, :cond_1

    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 651
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v4    # "geoCodingQuery":Lcom/mediatek/geocoding/GeoCodingQuery;
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 652
    .local v8, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v5

    .line 654
    .local v5, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v6, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 655
    .local v6, "locale":Ljava/util/Locale;
    invoke-static {p0, v6}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "countryIso":Ljava/lang/String;
    const/4 v7, 0x0

    .line 658
    .local v7, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 659
    const-string/jumbo v11, "\' for countryIso \'"

    .line 658
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 659
    const-string/jumbo v11, "\'..."

    .line 658
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v8, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v7

    .line 661
    .local v7, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "- parsed number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v7    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    if-eqz v7, :cond_3

    .line 667
    invoke-virtual {v5, v7, v6}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "description":Ljava/lang/String;
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "- got description: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-object v2

    .line 646
    .end local v1    # "countryIso":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v5    # "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v8    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .restart local v0    # "cityName":Ljava/lang/String;
    .restart local v4    # "geoCodingQuery":Lcom/mediatek/geocoding/GeoCodingQuery;
    :cond_2
    return-object v0

    .line 662
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v4    # "geoCodingQuery":Lcom/mediatek/geocoding/GeoCodingQuery;
    .restart local v1    # "countryIso":Ljava/lang/String;
    .restart local v5    # "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .restart local v6    # "locale":Ljava/util/Locale;
    .restart local v8    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v3

    .line 663
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string/jumbo v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_3
    return-object v12
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 527
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 528
    :cond_0
    return-object p0

    .line 530
    :cond_1
    return-object v1
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 482
    const v0, 0x1040262

    .line 481
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 483
    const v0, 0x1080539

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 485
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 501
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 506
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 509
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 512
    :catch_0
    move-exception v0

    .line 518
    .local v0, "se":Ljava/lang/SecurityException;
    const-string/jumbo v2, "CallerInfo"

    const-string/jumbo v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 739
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 740
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 741
    const-string/jumbo v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 742
    const-string/jumbo v2, ", phoneNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    const-string/jumbo v2, " }"

    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 741
    :cond_0
    const-string/jumbo v1, "non-null"

    goto :goto_0

    .line 742
    :cond_1
    const-string/jumbo v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 625
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 623
    return-void

    .line 624
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v0    # "number":Ljava/lang/String;
    goto :goto_0
.end method
