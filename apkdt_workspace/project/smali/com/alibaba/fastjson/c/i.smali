.class public final Lcom/alibaba/fastjson/c/i;
.super Ljava/lang/Object;
.source "BooleanCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/i;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/i;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/i;->a:Lcom/alibaba/fastjson/c/i;

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
    .locals 2
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

    .line 9
    iget-object p2, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 10
    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result p3

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-ne p3, v1, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p3, v1, :cond_1

    .line 13
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->k()I

    move-result p1

    .line 16
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 17
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->m(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    const-string p3, "false"

    if-nez p2, :cond_1

    .line 3
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p4, Lcom/alibaba/fastjson/c/b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

    iget p4, p4, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p4

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "true"

    .line 7
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
