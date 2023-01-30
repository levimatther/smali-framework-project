.class public Lcom/android/dialer/widget/MessageFragment;
.super Landroidx/fragment/app/Fragment;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/MessageFragment$Listener;,
        Lcom/android/dialer/widget/MessageFragment$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_LIMIT_KEY:Ljava/lang/String; = "char_limit"

.field private static final MESSAGE_LIST_KEY:Ljava/lang/String; = "message_list"

.field public static final NO_CHAR_LIMIT:I = -0x1

.field private static final SHOW_SEND_ICON_KEY:Ljava/lang/String; = "show_send_icon"


# instance fields
.field private charLimit:I

.field private customMessage:Landroid/widget/EditText;

.field private remainingChar:Landroid/widget/TextView;

.field private sendMessage:Landroid/widget/ImageView;

.field private sendMessageContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/widget/MessageFragment$Builder;)Lcom/android/dialer/widget/MessageFragment;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/dialer/widget/MessageFragment;->newInstance(Lcom/android/dialer/widget/MessageFragment$Builder;)Lcom/android/dialer/widget/MessageFragment;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lcom/android/dialer/widget/MessageFragment$Builder;
    .locals 1

    .line 151
    new-instance v0, Lcom/android/dialer/widget/MessageFragment$Builder;

    invoke-direct {v0}, Lcom/android/dialer/widget/MessageFragment$Builder;-><init>()V

    return-object v0
.end method

.method private getListener()Lcom/android/dialer/widget/MessageFragment$Listener;
    .locals 1

    .line 147
    const-class v0, Lcom/android/dialer/widget/MessageFragment$Listener;

    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/MessageFragment$Listener;

    return-object v0
.end method

.method private static newInstance(Lcom/android/dialer/widget/MessageFragment$Builder;)Lcom/android/dialer/widget/MessageFragment;
    .locals 4

    .line 57
    new-instance v0, Lcom/android/dialer/widget/MessageFragment;

    invoke-direct {v0}, Lcom/android/dialer/widget/MessageFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-static {p0}, Lcom/android/dialer/widget/MessageFragment$Builder;->access$000(Lcom/android/dialer/widget/MessageFragment$Builder;)I

    move-result v2

    const-string v3, "char_limit"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-static {p0}, Lcom/android/dialer/widget/MessageFragment$Builder;->access$100(Lcom/android/dialer/widget/MessageFragment$Builder;)Z

    move-result v2

    const-string v3, "show_send_icon"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-static {p0}, Lcom/android/dialer/widget/MessageFragment$Builder;->access$200(Lcom/android/dialer/widget/MessageFragment$Builder;)[Ljava/lang/String;

    move-result-object p0

    const-string v2, "message_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 131
    iget v0, p0, Lcom/android/dialer/widget/MessageFragment;->charLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/dialer/widget/MessageFragment;->remainingChar:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/widget/MessageFragment;->getListener()Lcom/android/dialer/widget/MessageFragment$Listener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/dialer/widget/MessageFragment$Listener;->onMessageFragmentAfterTextChange(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

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
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessageContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/android/dialer/widget/MessageFragment;->getListener()Lcom/android/dialer/widget/MessageFragment$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dialer/widget/MessageFragment$Listener;->onMessageFragmentSendMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902a7

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    const-string p1, "Unknown view clicked"

    .line 117
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0c009e

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0902ab

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessage:Landroid/widget/ImageView;

    const p3, 0x7f09010b

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessageContainer:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/widget/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "show_send_icon"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 80
    iget-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessage:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessage:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 82
    iget-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessageContainer:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p3, 0x7f09010f

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    .line 86
    invoke-virtual {p3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/widget/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "char_limit"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/dialer/widget/MessageFragment;->charLimit:I

    if-eq p3, v2, :cond_1

    const p3, 0x7f090262

    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/widget/MessageFragment;->remainingChar:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->remainingChar:Landroid/widget/TextView;

    .line 93
    iget v1, p0, Lcom/android/dialer/widget/MessageFragment;->charLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p3, p0, Lcom/android/dialer/widget/MessageFragment;->customMessage:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/android/dialer/widget/MessageFragment;->charLimit:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    const p3, 0x7f0901fd

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/widget/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    const v4, 0x7f0c00fe

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 100
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/android/dialer/widget/MessageFragment;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/widget/MessageFragment;->getListener()Lcom/android/dialer/widget/MessageFragment$Listener;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/widget/MessageFragment;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/dialer/widget/MessageFragment$Listener;->onMessageFragmentSendMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 126
    iget-object p2, p0, Lcom/android/dialer/widget/MessageFragment;->sendMessage:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
