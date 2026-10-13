.class final enum Lcom/google/common/reflect/Types$c$b;
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
.method newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/Types;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/reflect/Types$b;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/Types$b;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
