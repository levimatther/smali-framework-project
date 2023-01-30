.class public Lcom/android/dialer/callcomposer/MessageComposerFragment;
.super Lcom/android/dialer/callcomposer/CallComposerFragment;
.source "MessageComposerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final CHAR_LIMIT_KEY:Ljava/lang/String; = "char_limit"

.field public static final NO_CHAR_LIMIT:I = -0x1


# instance fields
.field private charLimit:I

.field private customMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/MessageComposerFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->charLimit:I

    return p0
.end method

.method public static newInstance(I)Lcom/android/dialer/callcomposer/MessageComposerFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/android/dialer/callcomposer/MessageComposerFragment;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "char_limit"

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->composeCall(Lcom/android/dialer/callcomposer/CallComposerFragment;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clearComposer()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "char_limit"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->charLimit:I

    const p3, 0x7f0c009f

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090200

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f09010f

    .line 67
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    .line 69
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p2, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object p2, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    iget p2, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->charLimit:I

    if-eq p2, v1, :cond_0

    const p2, 0x7f090262

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->charLimit:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p3, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->charLimit:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    iget-object p3, p0, Lcom/android/dialer/callcomposer/MessageComposerFragment;->customMessage:Landroid/widget/EditText;

    new-instance v0, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/callcomposer/MessageComposerFragment$1;-><init>(Lcom/android/dialer/callcomposer/MessageComposerFragment;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const p2, 0x7f0901fc

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ff

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->sendAndCall()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public shouldHide()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
