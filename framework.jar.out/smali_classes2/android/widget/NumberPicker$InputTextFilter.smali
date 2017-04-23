.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 2279
    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 2295
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 2296
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2298
    .local v2, "filtered":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 2300
    move v3, p2

    .local v3, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v3, v0, :cond_0

    .line 2301
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2305
    :cond_0
    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 2307
    const/4 v2, 0x0

    .line 2310
    .end local v2    # "filtered":Ljava/lang/CharSequence;
    .end local v3    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 2311
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2314
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v10, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2315
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v10

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v10}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2314
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2317
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2318
    return-object v4

    .line 2300
    .end local v4    # "result":Ljava/lang/String;
    .restart local v2    # "filtered":Ljava/lang/CharSequence;
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2320
    .end local v2    # "filtered":Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .restart local v4    # "result":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9, v4}, Landroid/widget/NumberPicker;->-wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v6

    .line 2329
    .local v6, "val":I
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v9

    if-gt v6, v9, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v10}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_6

    .line 2330
    :cond_5
    const-string/jumbo v9, ""

    return-object v9

    .line 2332
    :cond_6
    return-object v2

    .line 2335
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "val":I
    :cond_7
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2336
    .restart local v2    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2341
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 2342
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    iget-object v10, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v10}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2344
    :cond_8
    const-string/jumbo v9, ""

    return-object v9

    .line 2346
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v10, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2347
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v10

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v10}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2346
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2348
    .restart local v4    # "result":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2349
    .local v5, "str":Ljava/lang/String;
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_b

    aget-object v7, v10, v9

    .line 2350
    .local v7, "val":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2351
    .local v8, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2352
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/widget/NumberPicker;->-wrap8(Landroid/widget/NumberPicker;II)V

    .line 2353
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move/from16 v0, p5

    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    return-object v9

    .line 2349
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2360
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "valLowerCase":Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 2361
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    iget-object v10, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v10}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2363
    :cond_c
    const-string/jumbo v9, ""

    return-object v9
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2289
    invoke-static {}, Landroid/widget/NumberPicker;->-get0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2284
    const/4 v0, 0x1

    return v0
.end method
