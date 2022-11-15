# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module optfeature

EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.44.1/go.mod"
	"cloud.google.com/go v0.44.2/go.mod"
	"cloud.google.com/go v0.45.1/go.mod"
	"cloud.google.com/go v0.46.3/go.mod"
	"cloud.google.com/go v0.50.0/go.mod"
	"cloud.google.com/go v0.52.0/go.mod"
	"cloud.google.com/go v0.53.0/go.mod"
	"cloud.google.com/go v0.54.0/go.mod"
	"cloud.google.com/go v0.56.0/go.mod"
	"cloud.google.com/go v0.57.0/go.mod"
	"cloud.google.com/go v0.62.0/go.mod"
	"cloud.google.com/go v0.65.0/go.mod"
	"cloud.google.com/go/bigquery v1.0.1/go.mod"
	"cloud.google.com/go/bigquery v1.3.0/go.mod"
	"cloud.google.com/go/bigquery v1.4.0/go.mod"
	"cloud.google.com/go/bigquery v1.5.0/go.mod"
	"cloud.google.com/go/bigquery v1.7.0/go.mod"
	"cloud.google.com/go/bigquery v1.8.0/go.mod"
	"cloud.google.com/go/datastore v1.0.0/go.mod"
	"cloud.google.com/go/datastore v1.1.0/go.mod"
	"cloud.google.com/go/pubsub v1.0.1/go.mod"
	"cloud.google.com/go/pubsub v1.1.0/go.mod"
	"cloud.google.com/go/pubsub v1.2.0/go.mod"
	"cloud.google.com/go/pubsub v1.3.1/go.mod"
	"cloud.google.com/go/storage v1.0.0/go.mod"
	"cloud.google.com/go/storage v1.5.0/go.mod"
	"cloud.google.com/go/storage v1.6.0/go.mod"
	"cloud.google.com/go/storage v1.8.0/go.mod"
	"cloud.google.com/go/storage v1.10.0/go.mod"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"filippo.io/age v1.0.0-rc.1"
	"filippo.io/age v1.0.0-rc.1/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/atotto/clipboard v0.1.4"
	"github.com/atotto/clipboard v0.1.4/go.mod"
	"github.com/blang/semver/v4 v4.0.0"
	"github.com/blang/semver/v4 v4.0.0/go.mod"
	"github.com/caspr-io/yamlpath v0.0.0-20200722075116-502e8d113a9b"
	"github.com/caspr-io/yamlpath v0.0.0-20200722075116-502e8d113a9b/go.mod"
	"github.com/cenkalti/backoff v2.2.1+incompatible"
	"github.com/cenkalti/backoff v2.2.1+incompatible/go.mod"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/chzyer/logex v1.1.10"
	"github.com/chzyer/logex v1.1.10/go.mod"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20191209042840-269d4d468f6f/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.4/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/fatih/color v1.10.0"
	"github.com/fatih/color v1.10.0/go.mod"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20200222043503-6f7a984d4dc4/go.mod"
	"github.com/godbus/dbus v0.0.0-20190623212516-8a1682060722"
	"github.com/godbus/dbus v0.0.0-20190623212516-8a1682060722/go.mod"
	"github.com/gokyle/twofactor v1.0.1"
	"github.com/gokyle/twofactor v1.0.1/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20190702054246-869f871628b6/go.mod"
	"github.com/golang/groupcache v0.0.0-20191227052852-215e87163ea7/go.mod"
	"github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/mock v1.4.0/go.mod"
	"github.com/golang/mock v1.4.1/go.mod"
	"github.com/golang/mock v1.4.3/go.mod"
	"github.com/golang/mock v1.4.4/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.3.3/go.mod"
	"github.com/golang/protobuf v1.3.4/go.mod"
	"github.com/golang/protobuf v1.3.5/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/golang/protobuf v1.4.1/go.mod"
	"github.com/golang/protobuf v1.4.2/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-cmp v0.4.1/go.mod"
	"github.com/google/go-cmp v0.5.0/go.mod"
	"github.com/google/go-cmp v0.5.1/go.mod"
	"github.com/google/go-cmp v0.5.2/go.mod"
	"github.com/google/go-cmp v0.5.5"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-github v17.0.0+incompatible"
	"github.com/google/go-github v17.0.0+incompatible/go.mod"
	"github.com/google/go-github/v33 v33.0.0"
	"github.com/google/go-github/v33 v33.0.0/go.mod"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/google/go-querystring v1.1.0"
	"github.com/google/go-querystring v1.1.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/martian/v3 v3.0.0/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/pprof v0.0.0-20191218002539-d4f498aebedc/go.mod"
	"github.com/google/pprof v0.0.0-20200212024743-f11f1df84d12/go.mod"
	"github.com/google/pprof v0.0.0-20200229191704-1ebb73c60ed3/go.mod"
	"github.com/google/pprof v0.0.0-20200430221834-fc25d7d30c6d/go.mod"
	"github.com/google/pprof v0.0.0-20200708004538-1a94d8640e99/go.mod"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/gopasspw/pinentry v0.0.2"
	"github.com/gopasspw/pinentry v0.0.2/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/errwrap v1.1.0"
	"github.com/hashicorp/errwrap v1.1.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.4"
	"github.com/hashicorp/golang-lru v0.5.4/go.mod"
	"github.com/ianlancetaylor/demangle v0.0.0-20181102032728-5e5cf60278f6/go.mod"
	"github.com/jsimonetti/pwscheme v0.0.0-20160922125227-76804708ecad"
	"github.com/jsimonetti/pwscheme v0.0.0-20160922125227-76804708ecad/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/jstemmer/go-junit-report v0.9.1/go.mod"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/martinhoefling/goxkcdpwgen v0.0.0-20190331205820-7dc3d102eca3"
	"github.com/martinhoefling/goxkcdpwgen v0.0.0-20190331205820-7dc3d102eca3/go.mod"
	"github.com/mattn/go-colorable v0.1.8"
	"github.com/mattn/go-colorable v0.1.8/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-ps v1.0.0"
	"github.com/mitchellh/go-ps v1.0.0/go.mod"
	"github.com/muesli/crunchy v0.4.0"
	"github.com/muesli/crunchy v0.4.0/go.mod"
	"github.com/nbutton23/zxcvbn-go v0.0.0-20210217022336-fa2cb2858354"
	"github.com/nbutton23/zxcvbn-go v0.0.0-20210217022336-fa2cb2858354/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/schollz/closestmatch v0.0.0-20190308193919-1fbe626be92e"
	"github.com/schollz/closestmatch v0.0.0-20190308193919-1fbe626be92e/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e"
	"github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e/go.mod"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.1.4/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/urfave/cli/v2 v2.3.0"
	"github.com/urfave/cli/v2 v2.3.0/go.mod"
	"github.com/xrash/smetrics v0.0.0-20170218160415-a3153f7040e9/go.mod"
	"github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673"
	"github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673/go.mod"
	"github.com/yuin/goldmark v1.1.25/go.mod"
	"github.com/yuin/goldmark v1.1.27/go.mod"
	"github.com/yuin/goldmark v1.1.32/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0/go.mod"
	"go.opencensus.io v0.22.2/go.mod"
	"go.opencensus.io v0.22.3/go.mod"
	"go.opencensus.io v0.22.4/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20201221181555-eec23a3978ad/go.mod"
	"golang.org/x/crypto v0.0.0-20210415154028-4f45737414dc"
	"golang.org/x/crypto v0.0.0-20210415154028-4f45737414dc/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979/go.mod"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136/go.mod"
	"golang.org/x/exp v0.0.0-20191129062945-2f5052295587/go.mod"
	"golang.org/x/exp v0.0.0-20191227195350-da58074b4299/go.mod"
	"golang.org/x/exp v0.0.0-20200119233911-0405dc783f0a/go.mod"
	"golang.org/x/exp v0.0.0-20200207192155-f17229e696bd/go.mod"
	"golang.org/x/exp v0.0.0-20200224162631-6cc2880d07d6/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f/go.mod"
	"golang.org/x/lint v0.0.0-20200130185559-910be7a94367/go.mod"
	"golang.org/x/lint v0.0.0-20200302205851-738671d3881b/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/mod v0.1.1-0.20191107180719-034126e5016b/go.mod"
	"golang.org/x/mod v0.2.0/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190628185345-da137c7871d7/go.mod"
	"golang.org/x/net v0.0.0-20190724013045-ca1201d0de80/go.mod"
	"golang.org/x/net v0.0.0-20191209160850-c0dbc17a3553/go.mod"
	"golang.org/x/net v0.0.0-20200114155413-6afb5195e5aa/go.mod"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2/go.mod"
	"golang.org/x/net v0.0.0-20200222125558-5a598a2470a0/go.mod"
	"golang.org/x/net v0.0.0-20200226121028-0de0cce0169b/go.mod"
	"golang.org/x/net v0.0.0-20200301022130-244492dfa37a/go.mod"
	"golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e/go.mod"
	"golang.org/x/net v0.0.0-20200501053045-e0ff5e5a1de5/go.mod"
	"golang.org/x/net v0.0.0-20200506145744-7e3656a0809f/go.mod"
	"golang.org/x/net v0.0.0-20200513185701-a91f0712d120/go.mod"
	"golang.org/x/net v0.0.0-20200520182314-0ba52f642ac2/go.mod"
	"golang.org/x/net v0.0.0-20200625001655-4c5254603344/go.mod"
	"golang.org/x/net v0.0.0-20200707034311-ab3426394381/go.mod"
	"golang.org/x/net v0.0.0-20200822124328-c89045814202/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210415231046-e915ea6b2b7d"
	"golang.org/x/net v0.0.0-20210415231046-e915ea6b2b7d/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/oauth2 v0.0.0-20191202225959-858c2ad4c8b6/go.mod"
	"golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d/go.mod"
	"golang.org/x/oauth2 v0.0.0-20210413134643-5e61552d6c78"
	"golang.org/x/oauth2 v0.0.0-20210413134643-5e61552d6c78/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a/go.mod"
	"golang.org/x/sync v0.0.0-20200625203802-6e8e738ad208/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20190726091711-fc99dfbffb4e/go.mod"
	"golang.org/x/sys v0.0.0-20191001151750-bb3f8db39f24/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191204072324-ce4227a45e2e/go.mod"
	"golang.org/x/sys v0.0.0-20191228213918-04cbcbbfeed8/go.mod"
	"golang.org/x/sys v0.0.0-20200113162924-86b910548bc1/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200122134326-e047566fdf82/go.mod"
	"golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5/go.mod"
	"golang.org/x/sys v0.0.0-20200212091648-12a6c2dcc1e4/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200331124033-c3d80250170d/go.mod"
	"golang.org/x/sys v0.0.0-20200501052902-10377860bb8e/go.mod"
	"golang.org/x/sys v0.0.0-20200511232937-7e40ca221e25/go.mod"
	"golang.org/x/sys v0.0.0-20200515095857-1151b9dac4a9/go.mod"
	"golang.org/x/sys v0.0.0-20200523222454-059865788121/go.mod"
	"golang.org/x/sys v0.0.0-20200803210538-64077c9b5642/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210330210617-4fbd30eecc44/go.mod"
	"golang.org/x/sys v0.0.0-20210419170143-37df388d1f33"
	"golang.org/x/sys v0.0.0-20210419170143-37df388d1f33/go.mod"
	"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72"
	"golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72/go.mod"
	"golang.org/x/text v0.0.0-20170915032832-14c0d48ead0c/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/time v0.0.0-20191024005414-555d28b269f0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190624222133-a101b041ded4/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479/go.mod"
	"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/tools v0.0.0-20191113191852-77e3bb0ad9e7/go.mod"
	"golang.org/x/tools v0.0.0-20191115202509-3a792d9c32b2/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20191125144606-a911d9008d1f/go.mod"
	"golang.org/x/tools v0.0.0-20191130070609-6e064ea0cf2d/go.mod"
	"golang.org/x/tools v0.0.0-20191216173652-a0e659d51361/go.mod"
	"golang.org/x/tools v0.0.0-20191227053925-7b8e75db28f4/go.mod"
	"golang.org/x/tools v0.0.0-20200117161641-43d50277825c/go.mod"
	"golang.org/x/tools v0.0.0-20200122220014-bf1340f18c4a/go.mod"
	"golang.org/x/tools v0.0.0-20200130002326-2f3ba24bd6e7/go.mod"
	"golang.org/x/tools v0.0.0-20200204074204-1cc6d1ef6c74/go.mod"
	"golang.org/x/tools v0.0.0-20200207183749-b753a1ba74fa/go.mod"
	"golang.org/x/tools v0.0.0-20200212150539-ea181f53ac56/go.mod"
	"golang.org/x/tools v0.0.0-20200224181240-023911ca70b2/go.mod"
	"golang.org/x/tools v0.0.0-20200227222343-706bc42d1f0d/go.mod"
	"golang.org/x/tools v0.0.0-20200304193943-95d2e580d8eb/go.mod"
	"golang.org/x/tools v0.0.0-20200312045724-11d5b4c81c7d/go.mod"
	"golang.org/x/tools v0.0.0-20200331025713-a30bf2db82d4/go.mod"
	"golang.org/x/tools v0.0.0-20200501065659-ab2804fb9c9d/go.mod"
	"golang.org/x/tools v0.0.0-20200512131952-2bc93b1c0c88/go.mod"
	"golang.org/x/tools v0.0.0-20200515010526-7d3b6ebf133d/go.mod"
	"golang.org/x/tools v0.0.0-20200618134242-20370b0cb4b2/go.mod"
	"golang.org/x/tools v0.0.0-20200729194436-6467de6f59a7/go.mod"
	"golang.org/x/tools v0.0.0-20200804011535-6c149bb5ef0d/go.mod"
	"golang.org/x/tools v0.0.0-20200825202427-b303f430e36d/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.8.0/go.mod"
	"google.golang.org/api v0.9.0/go.mod"
	"google.golang.org/api v0.13.0/go.mod"
	"google.golang.org/api v0.14.0/go.mod"
	"google.golang.org/api v0.15.0/go.mod"
	"google.golang.org/api v0.17.0/go.mod"
	"google.golang.org/api v0.18.0/go.mod"
	"google.golang.org/api v0.19.0/go.mod"
	"google.golang.org/api v0.20.0/go.mod"
	"google.golang.org/api v0.22.0/go.mod"
	"google.golang.org/api v0.24.0/go.mod"
	"google.golang.org/api v0.28.0/go.mod"
	"google.golang.org/api v0.29.0/go.mod"
	"google.golang.org/api v0.30.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/appengine v1.6.5/go.mod"
	"google.golang.org/appengine v1.6.6/go.mod"
	"google.golang.org/appengine v1.6.7"
	"google.golang.org/appengine v1.6.7/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51/go.mod"
	"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a/go.mod"
	"google.golang.org/genproto v0.0.0-20191115194625-c23dd37a84c9/go.mod"
	"google.golang.org/genproto v0.0.0-20191216164720-4f79533eabd1/go.mod"
	"google.golang.org/genproto v0.0.0-20191230161307-f3c370f40bfb/go.mod"
	"google.golang.org/genproto v0.0.0-20200115191322-ca5a22157cba/go.mod"
	"google.golang.org/genproto v0.0.0-20200122232147-0452cf42e150/go.mod"
	"google.golang.org/genproto v0.0.0-20200204135345-fa8e72b47b90/go.mod"
	"google.golang.org/genproto v0.0.0-20200212174721-66ed5ce911ce/go.mod"
	"google.golang.org/genproto v0.0.0-20200224152610-e50cd9704f63/go.mod"
	"google.golang.org/genproto v0.0.0-20200228133532-8c2c7df3a383/go.mod"
	"google.golang.org/genproto v0.0.0-20200305110556-506484158171/go.mod"
	"google.golang.org/genproto v0.0.0-20200312145019-da6875a35672/go.mod"
	"google.golang.org/genproto v0.0.0-20200331122359-1ee6d9798940/go.mod"
	"google.golang.org/genproto v0.0.0-20200430143042-b979b6f78d84/go.mod"
	"google.golang.org/genproto v0.0.0-20200511104702-f5ebc3bea380/go.mod"
	"google.golang.org/genproto v0.0.0-20200515170657-fc4c6c6a6587/go.mod"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013/go.mod"
	"google.golang.org/genproto v0.0.0-20200618031413-b414f8b61790/go.mod"
	"google.golang.org/genproto v0.0.0-20200729003335-053ba62fc06f/go.mod"
	"google.golang.org/genproto v0.0.0-20200804131852-c06518451d9c/go.mod"
	"google.golang.org/genproto v0.0.0-20200825200019-8632dd797987/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1/go.mod"
	"google.golang.org/grpc v1.26.0/go.mod"
	"google.golang.org/grpc v1.27.0/go.mod"
	"google.golang.org/grpc v1.27.1/go.mod"
	"google.golang.org/grpc v1.28.0/go.mod"
	"google.golang.org/grpc v1.29.1/go.mod"
	"google.golang.org/grpc v1.30.0/go.mod"
	"google.golang.org/grpc v1.31.0/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"google.golang.org/protobuf v1.22.0/go.mod"
	"google.golang.org/protobuf v1.23.0/go.mod"
	"google.golang.org/protobuf v1.23.1-0.20200526195155-81db48ad09cc/go.mod"
	"google.golang.org/protobuf v1.24.0/go.mod"
	"google.golang.org/protobuf v1.25.0/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.3/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200121175148-a6ecf24a6d71/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	"gotest.tools v2.2.0+incompatible"
	"gotest.tools v2.2.0+incompatible/go.mod"
	"gotest.tools/v3 v3.0.2"
	"gotest.tools/v3 v3.0.2/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
	"honnef.co/go/tools v0.0.1-2020.1.3/go.mod"
	"honnef.co/go/tools v0.0.1-2020.1.4/go.mod"
	"rsc.io/binaryregexp v0.2.0/go.mod"
	"rsc.io/qr v0.2.0"
	"rsc.io/qr v0.2.0/go.mod"
	"rsc.io/quote/v3 v3.1.0/go.mod"
	"rsc.io/sampler v1.3.0/go.mod"
)

go-module_set_globals

	DESCRIPTION="a simple but powerful password manager for the terminal"
	HOMEPAGE="https://www.gopass.pw/"
	SRC_URI="https://github.com/gopasspw/gopass/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
		${EGO_SUM_SRC_URI}"

LICENSE="MIT Apache-2.0 BSD MPL-2.0 BSD-2"
SLOT="0"
KEYWORDS="amd64 ~ppc64 ~x86"

RESTRICT="strip test"

QA_PRESTRIPPED="usr/bin/gopass"

DEPEND=">=dev-lang/go-1.16"
RDEPEND="
	dev-vcs/git
	>=app-crypt/gnupg-2
"

src_install() {
	emake install DESTDIR="${ED}/usr"
	einstalldocs
}

pkg_postinst() {
	optfeature "browser integration" app-admin/gopass-jsonapi
	optfeature "git credentials helper" app-admin/git-credential-gopass
	optfeature "haveibeenpwnd.com integration" app-admin/gopass-hibp
	optfeature "summon secrets helper" app-admin/gopass-summon-provider
}
