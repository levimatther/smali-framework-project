.class public Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;
.super Ljava/lang/Object;
.source "VoicemailErrorAlert.java"


# instance fields
.field private final alertManager:Lcom/android/dialer/app/alert/AlertManager;

.field private final context:Landroid/content/Context;

.field private final details:Landroid/widget/TextView;

.field private final header:Landroid/widget/TextView;

.field private final messageCreator:Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

.field private final modalAlertManager:Lcom/android/dialer/app/alert/AlertManager;

.field private modalView:Landroid/view/View;

.field private final primaryAction:Landroid/widget/TextView;

.field private final primaryActionRaised:Landroid/widget/TextView;

.field private final secondaryAction:Landroid/widget/TextView;

.field private final secondaryActionRaised:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->alertManager:Lcom/android/dialer/app/alert/AlertManager;

    .line 60
    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalAlertManager:Lcom/android/dialer/app/alert/AlertManager;

    .line 61
    iput-object p4, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->messageCreator:Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

    const p1, 0x7f0c011a

    .line 63
    invoke-interface {p2, p1}, Lcom/android/dialer/app/alert/AlertManager;->inflate(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f090154

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->header:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f090153

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->details:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f090251

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->primaryAction:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f09029d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->secondaryAction:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f090253

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->primaryActionRaised:Landroid/widget/TextView;

    .line 69
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    const p2, 0x7f09029e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->secondaryActionRaised:Landroid/widget/TextView;

    return-void
.end method

.method private bindActions(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->primaryAction:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->secondaryAction:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [Landroid/widget/TextView;

    .line 156
    iget-object v5, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->primaryActionRaised:Landroid/widget/TextView;

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->secondaryActionRaised:Landroid/widget/TextView;

    aput-object v5, v2, v4

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 158
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getActions()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x8

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 161
    invoke-virtual {v5}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->isRaised()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    aget-object v7, v2, v4

    .line 163
    aget-object v8, v1, v4

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 165
    :cond_0
    aget-object v7, v1, v4

    .line 166
    aget-object v8, v2, v4

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_1
    invoke-virtual {v5}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v5}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 172
    :cond_1
    aget-object v5, v1, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    aget-object v5, v2, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getTosView(Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0c011c

    .line 122
    invoke-interface {p1, v0}, Lcom/android/dialer/app/alert/AlertManager;->inflate(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090308

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090307

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 127
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 130
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v3, 0x7f09035b

    .line 131
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f09035a

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getImageResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x7f090352

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->getImageResourceId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getModalView()Landroid/view/View;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    return-object v0
.end method

.method loadMessage(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->header:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->details:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->bindActions(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;)V

    return-void
.end method

.method public updateStatus(Ljava/util/List;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailStatus;",
            ">;",
            "Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "VoicemailErrorAlert.updateStatus"

    const-string v4, "%d status"

    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    .line 77
    iget-object v4, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->messageCreator:Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

    iget-object v5, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, p2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;->create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->alertManager:Lcom/android/dialer/app/alert/AlertManager;

    invoke-interface {p1}, Lcom/android/dialer/app/alert/AlertManager;->clear()V

    .line 84
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalAlertManager:Lcom/android/dialer/app/alert/AlertManager;

    invoke-interface {p1}, Lcom/android/dialer/app/alert/AlertManager;->clear()V

    if-eqz v1, :cond_4

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->isModal()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v3

    .line 90
    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "isModal: %b, %s"

    .line 86
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->isModal()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    instance-of p1, v1, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalAlertManager:Lcom/android/dialer/app/alert/AlertManager;

    check-cast v1, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;

    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->getTosView(Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalView:Landroid/view/View;

    .line 97
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->modalAlertManager:Lcom/android/dialer/app/alert/AlertManager;

    invoke-interface {p2, p1}, Lcom/android/dialer/app/alert/AlertManager;->add(Landroid/view/View;)V

    goto :goto_0

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Modal message type is undefined!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->loadMessage(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;)V

    .line 100
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->alertManager:Lcom/android/dialer/app/alert/AlertManager;

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->view:Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/android/dialer/app/alert/AlertManager;->add(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
