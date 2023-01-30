.class Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$6;
.super Ljava/lang/Object;
.source "VoicemailTosMessageCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->showSetPinBeforeDeclineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$6;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
