.class public final Lorg/junit/experimental/categories/a;
.super Lorg/junit/validator/a;
.source "CategoryValidator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/junit/BeforeClass;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/junit/AfterClass;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lorg/junit/Before;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lorg/junit/After;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method
