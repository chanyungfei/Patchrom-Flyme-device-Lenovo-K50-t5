.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method static synthetic -set0(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 2469
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2478
    :try_start_0
    iget-object v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v3, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    :goto_0
    return-void

    .line 2479
    :catch_0
    move-exception v0

    .line 2480
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NumberPicker"

    const-string/jumbo v2, "error "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
