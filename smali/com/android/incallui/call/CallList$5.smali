.class Lcom/android/incallui/call/CallList$5;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/android/dialer/spam/SpamBindings$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/call/CallList;->updateUserMarkedSpamStatus(Lcom/android/incallui/call/DialerCall;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/call/CallList;

.field final synthetic val$call:Lcom/android/incallui/call/DialerCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/incallui/call/CallList$5;->this$0:Lcom/android/incallui/call/CallList;

    iput-object p2, p0, Lcom/android/incallui/call/CallList$5;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/incallui/call/CallList$5;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/DialerCall;->setIsInGlobalSpamList(Z)V

    return-void
.end method
