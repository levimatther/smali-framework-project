.class Lcom/android/incallui/DialpadFragment$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/incallui/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/DialpadFragment;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    .line 314
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    const/16 p1, 0xc

    new-array p1, p1, [C

    .line 310
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$1;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;)V

    return-void
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 3

    .line 437
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 438
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v1

    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    if-eqz p1, :cond_1

    move v1, p1

    :cond_1
    int-to-char p1, v1

    return p1
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result p1

    invoke-static {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 383
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result p1

    const-string v1, "\' from input."

    if-eqz p1, :cond_0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener reading \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1, v0}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    const/4 p1, 0x1

    return p1

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener rejecting \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 338
    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v0

    int-to-char v0, v0

    .line 341
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result p1

    const-string p2, "\' from input."

    if-eqz p1, :cond_0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DTMFKeyListener reading \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1, v0}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DTMFKeyListener rejecting \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 416
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result p1

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener.onKeyUp: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 368
    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result p1

    int-to-char p1, p1

    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 373
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stopping the tone for \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
