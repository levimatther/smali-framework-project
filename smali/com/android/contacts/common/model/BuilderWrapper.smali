.class public Lcom/android/contacts/common/model/BuilderWrapper;
.super Ljava/lang/Object;
.source "BuilderWrapper.java"


# instance fields
.field private mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 35
    iput p2, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    return-void
.end method


# virtual methods
.method public getBuilder()Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    return v0
.end method

.method public setBuilder(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    return-void
.end method
