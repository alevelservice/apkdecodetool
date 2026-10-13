.class public final Li/g0/f/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Li/t;


# instance fields
.field public final a:Li/w;


# direct methods
.method public constructor <init>(Li/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/g0/f/a;->a:Li/w;

    return-void
.end method


# virtual methods
.method public a(Li/t$a;)Li/b0;
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Li/g0/g/g;

    .line 2
    invoke-virtual {v0}, Li/g0/g/g;->v()Li/z;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Li/g0/g/g;->h()Li/g0/f/g;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Li/z;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Li/g0/f/a;->a:Li/w;

    invoke-virtual {v2, v4, p1, v3}, Li/g0/f/g;->a(Li/w;Li/t$a;Z)Li/g0/g/c;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Li/g0/f/g;->c()Li/g0/f/c;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Li/g0/g/g;->a(Li/z;Li/g0/f/g;Li/g0/g/c;Li/g0/f/c;)Li/b0;

    move-result-object p1

    return-object p1
.end method
