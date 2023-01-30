.class public final synthetic Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;->f$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;->f$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->lambda$onTextChanged$0$RttChatFragment(Ljava/lang/CharSequence;)V

    return-void
.end method
