.class public Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;
.super Ljava/lang/Object;
.source "InComingRttCallDialog.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InComingRttCallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final inComingRttCallDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/incallui/InComingRttCallDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/incallui/InComingRttCallDialog;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;->inComingRttCallDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InComingRttCallDialog;Lcom/android/incallui/InComingRttCallDialog$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;-><init>(Lcom/android/incallui/InComingRttCallDialog;)V

    return-void
.end method

.method private getNameOrNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNameOrNumber  entry = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InComingRttCallDialog"

    invoke-static {v0, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 174
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    return-object p1

    .line 176
    :cond_0
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;->inComingRttCallDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/InComingRttCallDialog;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/android/incallui/InComingRttCallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;->getNameOrNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/incallui/InComingRttCallDialog;->access$100(Lcom/android/incallui/InComingRttCallDialog;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method
