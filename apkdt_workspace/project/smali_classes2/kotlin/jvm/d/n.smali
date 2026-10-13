.class public Lkotlin/jvm/d/n;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final a:Lkotlin/jvm/d/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/d/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lkotlin/jvm/d/o;

    invoke-direct {v1}, Lkotlin/jvm/d/o;-><init>()V

    :goto_1
    sput-object v1, Lkotlin/jvm/d/n;->a:Lkotlin/jvm/d/o;

    return-void
.end method

.method public static a(Lkotlin/jvm/d/f;)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 3
    sget-object v0, Lkotlin/jvm/d/n;->a:Lkotlin/jvm/d/o;

    invoke-virtual {v0, p0}, Lkotlin/jvm/d/o;->a(Lkotlin/jvm/d/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/d/i;)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 2
    sget-object v0, Lkotlin/jvm/d/n;->a:Lkotlin/jvm/d/o;

    invoke-virtual {v0, p0}, Lkotlin/jvm/d/o;->a(Lkotlin/jvm/d/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/z/c;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/d/n;->a:Lkotlin/jvm/d/o;

    invoke-virtual {v0, p0}, Lkotlin/jvm/d/o;->a(Ljava/lang/Class;)Lkotlin/z/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/d/j;)Lkotlin/z/i;
    .locals 1

    .line 4
    sget-object v0, Lkotlin/jvm/d/n;->a:Lkotlin/jvm/d/o;

    invoke-virtual {v0, p0}, Lkotlin/jvm/d/o;->a(Lkotlin/jvm/d/j;)Lkotlin/z/i;

    return-object p0
.end method
