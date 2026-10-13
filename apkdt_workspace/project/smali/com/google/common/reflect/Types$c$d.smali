.class final enum Lcom/google/common/reflect/Types$c$d;
.super Lcom/google/common/reflect/Types$c;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$c;-><init>(Ljava/lang/String;ILcom/google/common/reflect/Types$a;)V

    return-void
.end method


# virtual methods
.method jdkTypeDuplicatesOwnerName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$c;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$c;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$c;->JAVA8:Lcom/google/common/reflect/Types$c;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$c;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
