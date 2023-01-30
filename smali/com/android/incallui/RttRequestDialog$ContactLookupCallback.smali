.class public Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;
.super Ljava/lang/Object;
.source "RttRequestDialog.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RttRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mRttRequestDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/incallui/RttRequestDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/incallui/RttRequestDialog;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;->mRttRequestDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/RttRequestDialog;Lcom/android/incallui/RttRequestDialog$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;-><init>(Lcom/android/incallui/RttRequestDialog;)V

    return-void
.end method

.method private getNameOrNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNameOrNumber  entry = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RttRequestDialog"

    invoke-static {v0, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 209
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    return-object p1

    .line 211
    :cond_0
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;->mRttRequestDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/RttRequestDialog;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/android/incallui/RttRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;->getNameOrNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/incallui/RttRequestDialog;->access$100(Lcom/android/incallui/RttRequestDialog;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method
