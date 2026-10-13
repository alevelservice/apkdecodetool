.class public Lcom/intercept/plugins/qr_scanner/QrScanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "QrScanActivity.java"


# static fields
.field public static EXTRA_DESCRIPTION:Ljava/lang/String; = "extra_description"

.field public static EXTRA_ERROR_ACTION_TEXT:Ljava/lang/String; = "extra_error_action_text"

.field public static EXTRA_ERROR_DESCRIPTION:Ljava/lang/String; = "extra_error_description"

.field public static EXTRA_ERROR_TITLE:Ljava/lang/String; = "extra_error_title"

.field public static EXTRA_FOCUS_INTERVAL:Ljava/lang/String; = "extra_focus_interval"

.field public static EXTRA_FORCE_FOCUS:Ljava/lang/String; = "extra_force_focus"

.field public static EXTRA_RESULT:Ljava/lang/String; = "extra_result"

.field public static EXTRA_THEME_COLOR:Ljava/lang/String; = "extra_theme_color"

.field public static EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field public static EXTRA_TORCH_ENABLED:Ljava/lang/String; = "extra_torch_enabled"

.field public static EXTRA_VALID_QR_PATTERN:Ljava/lang/String; = "extra_valid_qr_pattern"

.field public static EXTRA_WHITELISTED_URL:Ljava/lang/String; = "extra_whitelisted_url"


# instance fields
.field private g:Z

.field private h:Landroid/view/SurfaceView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/gms/vision/barcode/a;

.field private o:Lcom/google/android/gms/vision/a;

.field private p:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->g:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;

    invoke-direct {v1, p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity$a;-><init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->c()V

    return-void
.end method

.method static synthetic access$100(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->e()V

    return-void
.end method

.method static synthetic access$200(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->g:Z

    return p0
.end method

.method static synthetic access$402(Lcom/intercept/plugins/qr_scanner/QrScanActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->g:Z

    return p1
.end method

.method static synthetic access$500(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->b()V

    return-void
.end method

.method static synthetic access$600(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->p:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;

    invoke-direct {v1, p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity$c;-><init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->o:Lcom/google/android/gms/vision/a;

    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->h:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/a;->a(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->n:Lcom/google/android/gms/vision/barcode/a;

    new-instance v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;

    invoke-direct {v1, p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity$b;-><init>(Lcom/intercept/plugins/qr_scanner/QrScanActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/b;->a(Lcom/google/android/gms/vision/b$b;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->o:Lcom/google/android/gms/vision/a;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/a;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/intercept/plugins/qr_scanner/d;->activity_qr_read:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 4
    sget v0, Lcom/intercept/plugins/qr_scanner/c;->center_title_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 5
    sget v1, Lcom/intercept/plugins/qr_scanner/c;->toolbar_title:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    sget-object v2, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v1, Lcom/intercept/plugins/qr_scanner/c;->label_footer:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    sget-object v2, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->i:Ljava/lang/String;

    .line 10
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->j:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_ACTION_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->k:Ljava/lang/String;

    .line 12
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_VALID_QR_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->l:Ljava/lang/String;

    .line 13
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_WHITELISTED_URL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->m:Ljava/util/List;

    .line 14
    iput-object p0, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->f(Z)V

    .line 18
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->d(Z)V

    .line 19
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->e(Z)V

    .line 20
    :cond_1
    sget p1, Lcom/intercept/plugins/qr_scanner/c;->qr_reader:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->h:Landroid/view/SurfaceView;

    .line 21
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->h:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 22
    new-instance p1, Lcom/google/android/gms/vision/barcode/a$a;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->p:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/google/android/gms/vision/barcode/a$a;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x100

    .line 23
    invoke-virtual {p1, v2}, Lcom/google/android/gms/vision/barcode/a$a;->a(I)Lcom/google/android/gms/vision/barcode/a$a;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/vision/barcode/a$a;->a()Lcom/google/android/gms/vision/barcode/a;

    move-result-object p1

    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->n:Lcom/google/android/gms/vision/barcode/a;

    .line 25
    new-instance p1, Lcom/google/android/gms/vision/a$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->n:Lcom/google/android/gms/vision/barcode/a;

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/vision/a$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/b;)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/a$a;->a(I)Lcom/google/android/gms/vision/a$a;

    const/high16 v0, 0x41c00000    # 24.0f

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/a$a;->a(F)Lcom/google/android/gms/vision/a$a;

    .line 28
    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/a$a;->a(Z)Lcom/google/android/gms/vision/a$a;

    const/16 v0, 0x400

    const/16 v1, 0x300

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/vision/a$a;->a(II)Lcom/google/android/gms/vision/a$a;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/vision/a$a;->a()Lcom/google/android/gms/vision/a;

    move-result-object p1

    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->o:Lcom/google/android/gms/vision/a;

    .line 31
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->a()V

    .line 32
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->e()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->e()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->e()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
