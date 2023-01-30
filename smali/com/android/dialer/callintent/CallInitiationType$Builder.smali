.class public final Lcom/android/dialer/callintent/CallInitiationType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CallInitiationType.java"

# interfaces
.implements Lcom/android/dialer/callintent/CallInitiationTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/CallInitiationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/callintent/CallInitiationType;",
        "Lcom/android/dialer/callintent/CallInitiationType$Builder;",
        ">;",
        "Lcom/android/dialer/callintent/CallInitiationTypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 430
    invoke-static {}, Lcom/android/dialer/callintent/CallInitiationType;->access$000()Lcom/android/dialer/callintent/CallInitiationType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/callintent/CallInitiationType$1;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallInitiationType$Builder;-><init>()V

    return-void
.end method
