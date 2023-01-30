.class public final synthetic Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lcom/android/voicemail/impl/Greeting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;Ljava/util/ArrayList;Lcom/android/voicemail/impl/Greeting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    iput-object p2, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$2:Lcom/android/voicemail/impl/Greeting;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;->f$2:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->lambda$setActive$3$VoicemailGreetingActivity(Ljava/util/ArrayList;Lcom/android/voicemail/impl/Greeting;)V

    return-void
.end method
