.class public abstract Lcom/google/android/gms/internal/vision/s4;
.super Lcom/google/android/gms/internal/vision/y2;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/s4$b;,
        Lcom/google/android/gms/internal/vision/s4$f;,
        Lcom/google/android/gms/internal/vision/s4$c;,
        Lcom/google/android/gms/internal/vision/s4$d;,
        Lcom/google/android/gms/internal/vision/s4$a;,
        Lcom/google/android/gms/internal/vision/s4$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/s4<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/s4$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/y2<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzwf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/s4<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzwd:Lcom/google/android/gms/internal/vision/l7;

.field private zzwe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/s4;->zzwf:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/y2;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/l7;->d()Lcom/google/android/gms/internal/vision/l7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwd:Lcom/google/android/gms/internal/vision/l7;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/s4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/s4<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/vision/s4;->zzwf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/vision/s4;->zzwf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/o7;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    .line 10
    sget v1, Lcom/google/android/gms/internal/vision/s4$e;->f:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    if-eqz v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/vision/s4;->zzwf:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/vision/d6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/vision/p6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/p6;-><init>(Lcom/google/android/gms/internal/vision/d6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 19
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 20
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 21
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 23
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static a(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/s4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/s4<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/vision/s4;->zzwf:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final a(Lcom/google/android/gms/internal/vision/s4;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/s4<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 25
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->a:I

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 28
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/r6;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 29
    sget p1, Lcom/google/android/gms/internal/vision/s4$e;->b:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 30
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method protected static h()Lcom/google/android/gms/internal/vision/x4;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/u4;->b()Lcom/google/android/gms/internal/vision/u4;

    move-result-object v0

    return-object v0
.end method

.method protected static l()Lcom/google/android/gms/internal/vision/z4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/vision/z4<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q6;->b()Lcom/google/android/gms/internal/vision/q6;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/vision/c6;
    .locals 2

    .line 31
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->e:I

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/vision/s4$a;

    .line 34
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/s4$a;->a(Lcom/google/android/gms/internal/vision/s4;)Lcom/google/android/gms/internal/vision/s4$a;

    return-object v0
.end method

.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/vision/a4;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/c4;->a(Lcom/google/android/gms/internal/vision/a4;)Lcom/google/android/gms/internal/vision/c4;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/r6;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/e8;)V

    return-void
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/vision/c6;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/s4$a;

    return-object v0
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/vision/d6;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    return-object v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/r6;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/s4;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/vision/s4;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/r6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/s4;->zzwe:I

    return v0
.end method

.method protected final g()Lcom/google/android/gms/internal/vision/s4$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/vision/s4<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/vision/s4$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/vision/s4$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/s4;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/s4$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/y2;->zzri:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/n6;->a()Lcom/google/android/gms/internal/vision/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/n6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/r6;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/r6;->c(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/y2;->zzri:I

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/y2;->zzri:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/s4;->a(Lcom/google/android/gms/internal/vision/s4;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/e6;->a(Lcom/google/android/gms/internal/vision/d6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
