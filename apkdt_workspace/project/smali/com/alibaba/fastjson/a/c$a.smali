.class public Lcom/alibaba/fastjson/a/c$a;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/alibaba/fastjson/a/m;

.field private final b:Ljava/lang/String;

.field public c:Lcom/alibaba/fastjson/a/a/d;

.field public d:Lcom/alibaba/fastjson/a/m;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c$a;->a:Lcom/alibaba/fastjson/a/m;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/a/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/fastjson/a/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/fastjson/a/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/alibaba/fastjson/a/c$a;)Lcom/alibaba/fastjson/a/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/fastjson/a/c$a;->a:Lcom/alibaba/fastjson/a/m;

    return-object p0
.end method
