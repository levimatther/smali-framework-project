.class public final Lcom/android/contacts/common/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    .line 43
    iput-wide p4, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    .line 44
    iput-object p6, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 45
    iput-boolean p7, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    .line 46
    iput-boolean p8, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method

.method public isFavorites()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    return v0
.end method
