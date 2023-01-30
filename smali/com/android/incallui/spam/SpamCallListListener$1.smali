.class Lcom/android/incallui/spam/SpamCallListListener$1;
.super Ljava/lang/Object;
.source "SpamCallListListener.java"

# interfaces
.implements Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamCallListListener;->onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamCallListListener;

.field final synthetic val$call:Lcom/android/incallui/call/DialerCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamCallListListener;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/incallui/spam/SpamCallListListener$1;->this$0:Lcom/android/incallui/spam/SpamCallListListener;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamCallListListener$1;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener$1;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/DialerCall;->setCallHistoryStatus(I)V

    return-void
.end method
