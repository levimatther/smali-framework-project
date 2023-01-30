.class public Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/baseui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/baseui/BaseFragment<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;"
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mButtonIds:[I

.field private mCurrentTextColor:I

.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

.field private mDtmfDialerField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f090229

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f090316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f0902fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f09016d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f090167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f0902b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f0902b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f090146

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f09021e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f090364

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f09024d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    const v1, 0x7f0902d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/incallui/baseui/BaseFragment;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 67
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090364
        0x7f090229
        0x7f090316
        0x7f0902fb
        0x7f09016d
        0x7f090167
        0x7f0902b9
        0x7f0902b2
        0x7f090146
        0x7f09021e
        0x7f0902d2
        0x7f09024d
    .end array-data
.end method

.method private configureKeypadListeners()V
    .locals 3

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    .line 247
    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 248
    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v1, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnPressedListener(Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateShowDialpad()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpadview/DialpadView;

    .line 204
    invoke-virtual {v0}, Lcom/android/dialer/dialpadview/DialpadView;->animateShow()V

    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .line 121
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/baseui/Presenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/baseui/Ui;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09012b

    if-ne p1, v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00aa

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090134

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/dialpadview/DialpadView;

    iput-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

    .line 136
    invoke-virtual {p2, v0}, Lcom/android/dialer/dialpadview/DialpadView;->setCanDigitsBeEdited(Z)V

    .line 137
    iget-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

    const p3, 0x7f0600ee

    invoke-virtual {p2, p3}, Lcom/android/dialer/dialpadview/DialpadView;->setBackgroundResource(I)V

    const p2, 0x7f090139

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    .line 140
    new-instance p2, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$1;)V

    iput-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 141
    iget-object p3, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 144
    iget-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 145
    iget-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    .line 146
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->configureKeypadListeners()V

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

    const p3, 0x7f09012b

    invoke-virtual {p2, p3}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 149
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 180
    invoke-super {p0}, Lcom/android/incallui/baseui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    .line 225
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key up."

    .line 235
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey:  keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 101
    sget-object p2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/DialpadPresenter;

    sget-object p3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 4

    const-string v0, "onPressed: "

    if-eqz p2, :cond_0

    .line 255
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    :cond_0
    if-nez p2, :cond_1

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/android/incallui/baseui/BaseFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->updateColors()V

    return-void
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 162
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getThemeColorManager()Lcom/android/incallui/ThemeColorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getPrimaryColor()I

    move-result v0

    .line 164
    iget v1, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/dialer/dialpadview/DialpadView;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    const v3, 0x7f090131

    .line 171
    invoke-virtual {v2, v3}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iput v0, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    return-void
.end method
