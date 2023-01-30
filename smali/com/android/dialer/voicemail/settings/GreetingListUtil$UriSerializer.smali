.class Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;
.super Ljava/lang/Object;
.source "GreetingListUtil.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingListUtil;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;->this$0:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;)V

    return-void
.end method


# virtual methods
.method public serialize(Landroid/net/Uri;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 62
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 60
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;->serialize(Landroid/net/Uri;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
