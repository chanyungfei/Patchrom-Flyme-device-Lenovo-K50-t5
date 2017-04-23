.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 142
    return-void
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 235
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_0

    .line 236
    return-void

    .line 240
    :cond_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 242
    .local v0, "isRequired":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 243
    return-void

    .line 240
    .end local v0    # "isRequired":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isRequired":Z
    goto :goto_0

    .line 246
    :cond_2
    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .line 255
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x10404f0

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 192
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v6, :cond_1

    .line 193
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 194
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 197
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v6, :cond_2

    .line 200
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v6, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 221
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 191
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 204
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 205
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    .line 211
    aput-object v1, v7, v8

    const v8, 0x10403c5

    .line 210
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 206
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 229
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 227
    :cond_0
    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    .line 150
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 151
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 152
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 153
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    .line 155
    const v9, 0x1020306

    invoke-virtual {p0, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 156
    .local v6, "permGrpIcon":Landroid/widget/ImageView;
    const v9, 0x1020307

    invoke-virtual {p0, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 158
    .local v7, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 159
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 160
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 165
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v10, -0x777778

    invoke-virtual {v2, v10, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 170
    .local v3, "label":Ljava/lang/CharSequence;
    iget-boolean v9, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v9, :cond_1

    if-eqz p4, :cond_1

    .line 172
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 173
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 174
    .local v5, "parcel":Landroid/os/Parcel;
    const/4 v9, 0x0

    invoke-static {p4, v5, v9}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 175
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    sget-object v9, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 177
    .local v4, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 180
    move-object v3, v1

    .line 183
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "newStr":Ljava/lang/CharSequence;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method
