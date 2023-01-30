.class Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindParser"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;


# instance fields
.field private final mBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 810
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    .line 815
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 816
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 817
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 818
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 819
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 820
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 821
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 822
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 823
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 824
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 825
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 826
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 827
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 828
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method private addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "kind"

    .line 845
    invoke-static {p3, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 850
    :cond_0
    new-instance p1, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Undefined data kind \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
