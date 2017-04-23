.class public Lcom/mediatek/widget/DefaultAccountPickerDialog;
.super Landroid/app/DialogFragment;
.source "DefaultAccountPickerDialog.java"


# static fields
.field private static final ACCOUNT_INFO_LIST_KEY:Ljava/lang/String; = "AccountInfoList"

.field private static final NO_ITEM_SELECT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "DefaultAccountPickerDialog"


# instance fields
.field private mSelection:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->mSelection:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/widget/DefaultAccountPickerDialog;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->mSelection:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->mSelection:I

    .line 43
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-direct {v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;-><init>()V

    .line 52
    .local v0, "dialogFragment":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x80500cf

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 77
    new-instance v0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-virtual {p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "adapter":Lcom/mediatek/widget/DefaultAccountPickerAdapter;
    invoke-virtual {p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "AccountInfoList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "AccountInfoList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-virtual {v0, v2}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->setItemData(Ljava/util/List;)V

    .line 82
    const-string/jumbo v3, "DefaultAccountPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateDialog get data form args : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getActivePosition()I

    move-result v3

    iput v3, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->mSelection:I

    .line 86
    iget v3, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->mSelection:I

    new-instance v4, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;Lcom/mediatek/widget/DefaultAccountPickerAdapter;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    new-instance v3, Lcom/mediatek/widget/DefaultAccountPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$2;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v3, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;Lcom/mediatek/widget/DefaultAccountPickerAdapter;)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setData(Ljava/util/List;)Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)",
            "Lcom/mediatek/widget/DefaultAccountPickerDialog;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v11, "b":Landroid/os/Bundle;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v8, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 65
    .local v9, "ai":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v1

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v6

    invoke-virtual {v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isSimAccount()Z

    move-result v7

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v9    # "ai":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_0
    const-string/jumbo v0, "AccountInfoList"

    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {p0, v11}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object p0
.end method
