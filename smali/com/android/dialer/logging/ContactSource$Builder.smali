.class public final Lcom/android/dialer/logging/ContactSource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactSource.java"

# interfaces
.implements Lcom/android/dialer/logging/ContactSourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ContactSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/ContactSource;",
        "Lcom/android/dialer/logging/ContactSource$Builder;",
        ">;",
        "Lcom/android/dialer/logging/ContactSourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 289
    invoke-static {}, Lcom/android/dialer/logging/ContactSource;->access$000()Lcom/android/dialer/logging/ContactSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/ContactSource$1;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/android/dialer/logging/ContactSource$Builder;-><init>()V

    return-void
.end method
