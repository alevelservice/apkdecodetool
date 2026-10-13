.class public Lcom/alibaba/fastjson/c/c;
.super Ljava/lang/Object;
.source "StringCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static a:Lcom/alibaba/fastjson/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/c;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/c;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/c;->a:Lcom/alibaba/fastjson/c/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    return-void
.end method
