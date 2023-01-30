.class public final Lcom/android/dialer/logging/InteractionEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InteractionEvent.java"

# interfaces
.implements Lcom/android/dialer/logging/InteractionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/InteractionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/InteractionEvent;",
        "Lcom/android/dialer/logging/InteractionEvent$Builder;",
        ">;",
        "Lcom/android/dialer/logging/InteractionEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 490
    invoke-static {}, Lcom/android/dialer/logging/InteractionEvent;->access$000()Lcom/android/dialer/logging/InteractionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/InteractionEvent$1;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Lcom/android/dialer/logging/InteractionEvent$Builder;-><init>()V

    return-void
.end method
