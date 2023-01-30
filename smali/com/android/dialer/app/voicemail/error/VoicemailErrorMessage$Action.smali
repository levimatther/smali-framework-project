.class public Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private final listener:Landroid/view/View$OnClickListener;

.field private final raised:Z

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->text:Ljava/lang/CharSequence;

    .line 70
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->listener:Landroid/view/View$OnClickListener;

    .line 71
    iput-boolean p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->raised:Z

    return-void
.end method


# virtual methods
.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isRaised()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;->raised:Z

    return v0
.end method
