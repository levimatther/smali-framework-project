.class Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$1;
.super Ljava/lang/Object;
.source "GreetingRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {p1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$000(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Z

    move-result p1

    return p1
.end method
