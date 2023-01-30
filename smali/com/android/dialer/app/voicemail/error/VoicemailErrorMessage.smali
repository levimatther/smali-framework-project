.class public Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/CharSequence;

.field private imageResourceId:Ljava/lang/Integer;

.field private modal:Z

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->title:Ljava/lang/CharSequence;

    .line 126
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->description:Ljava/lang/CharSequence;

    .line 127
    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->actions:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V
    .locals 0

    .line 120
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method public static createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 166
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110512

    .line 167
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createChangeAirplaneModeAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 132
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110518

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createDismissTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 9

    .line 242
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110513

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;-><init>(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V

    invoke-direct {v0, v1, v8}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 195
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110514

    .line 196
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$5;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$5;-><init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createSetPinAction(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 148
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110515

    .line 149
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createSyncAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 180
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110516

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;-><init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static createTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/voicemail/VoicemailClient;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 10

    .line 216
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110517

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;-><init>(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/voicemail/VoicemailClient;Landroid/telecom/PhoneAccountHandle;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V

    invoke-direct {v0, v1, v9}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getImageResourceId()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->imageResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isModal()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->modal:Z

    return v0
.end method

.method public setImageResourceId(Ljava/lang/Integer;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->imageResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setModal(Z)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->modal:Z

    return-object p0
.end method
