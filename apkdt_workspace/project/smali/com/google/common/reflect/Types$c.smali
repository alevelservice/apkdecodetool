.class abstract enum Lcom/google/common/reflect/Types$c;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/Types$c;",
        ">;"
    }
.end annotation


# static fields
.field static final CURRENT:Lcom/google/common/reflect/Types$c;

.field public static final enum JAVA6:Lcom/google/common/reflect/Types$c;

.field public static final enum JAVA7:Lcom/google/common/reflect/Types$c;

.field public static final enum JAVA8:Lcom/google/common/reflect/Types$c;

.field public static final enum JAVA9:Lcom/google/common/reflect/Types$c;

.field private static final synthetic e:[Lcom/google/common/reflect/Types$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/common/reflect/Types$c$a;

    const/4 v1, 0x0

    const-string v2, "JAVA6"

    invoke-direct {v0, v2, v1}, Lcom/google/common/reflect/Types$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$c;->JAVA6:Lcom/google/common/reflect/Types$c;

    .line 2
    new-instance v0, Lcom/google/common/reflect/Types$c$b;

    const/4 v2, 0x1

    const-string v3, "JAVA7"

    invoke-direct {v0, v3, v2}, Lcom/google/common/reflect/Types$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$c;->JAVA7:Lcom/google/common/reflect/Types$c;

    .line 3
    new-instance v0, Lcom/google/common/reflect/Types$c$c;

    const/4 v3, 0x2

    const-string v4, "JAVA8"

    invoke-direct {v0, v4, v3}, Lcom/google/common/reflect/Types$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    .line 4
    new-instance v0, Lcom/google/common/reflect/Types$c$d;

    const/4 v4, 0x3

    const-string v5, "JAVA9"

    invoke-direct {v0, v5, v4}, Lcom/google/common/reflect/Types$c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$c;->JAVA9:Lcom/google/common/reflect/Types$c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/reflect/Types$c;

    .line 5
    sget-object v5, Lcom/google/common/reflect/Types$c;->JAVA6:Lcom/google/common/reflect/Types$c;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/common/reflect/Types$c;->JAVA7:Lcom/google/common/reflect/Types$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/reflect/Types$c;->JAVA9:Lcom/google/common/reflect/Types$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/reflect/Types$c;->e:[Lcom/google/common/reflect/Types$c;

    .line 6
    const-class v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/google/common/reflect/Types$c$e;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$c$e;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/b;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    sput-object v0, Lcom/google/common/reflect/Types$c;->CURRENT:Lcom/google/common/reflect/Types$c;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA9:Lcom/google/common/reflect/Types$c;

    sput-object v0, Lcom/google/common/reflect/Types$c;->CURRENT:Lcom/google/common/reflect/Types$c;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/google/common/reflect/Types$c$f;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$c$f;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/b;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA7:Lcom/google/common/reflect/Types$c;

    sput-object v0, Lcom/google/common/reflect/Types$c;->CURRENT:Lcom/google/common/reflect/Types$c;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA6:Lcom/google/common/reflect/Types$c;

    sput-object v0, Lcom/google/common/reflect/Types$c;->CURRENT:Lcom/google/common/reflect/Types$c;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/Types$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/Types$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/Types$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/Types$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$c;->e:[Lcom/google/common/reflect/Types$c;

    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/Types$c;

    return-object v0
.end method


# virtual methods
.method jdkTypeDuplicatesOwnerName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/Types;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final usedInGenericType([Ljava/lang/reflect/Type;)Lcom/google/common/collect/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/x<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/x;->builder()Lcom/google/common/collect/x$a;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/Types$c;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method

.method abstract usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
