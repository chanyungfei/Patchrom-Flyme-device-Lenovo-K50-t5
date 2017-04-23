.class Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DefaultAccountPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/DefaultAccountPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field accountItem:Lcom/mediatek/widget/AccountItemView;

.field radioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountPickerAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/widget/DefaultAccountPickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->this$0:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/DefaultAccountPickerAdapter;Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/widget/DefaultAccountPickerAdapter;)V

    return-void
.end method
