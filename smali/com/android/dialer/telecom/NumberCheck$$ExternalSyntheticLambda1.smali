.class public final synthetic Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/telecom/NumberCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/telecom/NumberCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda1;->f$0:Lcom/android/dialer/telecom/NumberCheck;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda1;->f$0:Lcom/android/dialer/telecom/NumberCheck;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/dialer/telecom/NumberCheck;->onResponse(Ljava/lang/String;)V

    return-void
.end method
