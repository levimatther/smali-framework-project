.class Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;
.super Ljava/lang/Object;
.source "GreetingListUtil.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingListUtil;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;->this$0:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
